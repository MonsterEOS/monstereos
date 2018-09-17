BEGIN;

SET client_min_messages TO warning;

----- INITIAL SETUP -----
do language plpgsql
 $$
declare
    my_value            varchar;
    my_version          integer[];
    my_command          varchar;
begin
    my_version := regexp_matches(version(), 'PostgreSQL (\d)+\.(\d+)\.(\d+)');

    -- Verify minimum version
    if my_version < array[9,6,0]::integer[] then
        raise exception 'Cyan Audit requires PostgreSQL 9.6.0 or above';
    end if;
end;
 $$;


set local search_path to '';


CREATE SCHEMA IF NOT EXISTS cyanaudit;

------------------
----- TABLES -----
------------------

-- tb_audit_field
CREATE SEQUENCE IF NOT EXISTS cyanaudit.sq_pk_audit_field;

CREATE TABLE IF NOT EXISTS cyanaudit.tb_audit_field
(
    audit_field     integer primary key default nextval('cyanaudit.sq_pk_audit_field'),
    table_schema    varchar not null default 'public',
    table_name      varchar not null,
    column_name     varchar not null,
    enabled         boolean not null,
    loggable        boolean not null,
    CONSTRAINT tb_audit_field_table_column_key
        UNIQUE( table_schema, table_name, column_name ),
    CONSTRAINT tb_audit_field_tb_audit_event_not_allowed
        CHECK( table_schema != 'cyanaudit' )
);

COMMENT ON TABLE cyanaudit.tb_audit_field
    IS 'Each row is a column in your database. Toggle logging with the enabled flag.';

ALTER SEQUENCE cyanaudit.sq_pk_audit_field
    owned by cyanaudit.tb_audit_field.audit_field;



-- tb_audit_transaction_type
CREATE SEQUENCE IF NOT EXISTS cyanaudit.sq_pk_audit_transaction_type;

CREATE TABLE IF NOT EXISTS cyanaudit.tb_audit_transaction_type
(
    audit_transaction_type  integer primary key
                            default nextval('cyanaudit.sq_pk_audit_transaction_type'),
    label                   varchar unique
);

COMMENT ON TABLE cyanaudit.tb_audit_transaction_type
    IS 'A label assigned to one or more entries in the audit log.';

ALTER SEQUENCE cyanaudit.sq_pk_audit_transaction_type
    owned by cyanaudit.tb_audit_transaction_type.audit_transaction_type;



-- tb_config
CREATE TABLE IF NOT EXISTS cyanaudit.tb_config
(
    name    varchar(100) primary key,
    value   text
);

COMMENT ON TABLE cyanaudit.tb_config
    IS 'Cyan Audit configuration settings. Do not modify version setting';


-- tb_audit_event
CREATE TABLE IF NOT EXISTS cyanaudit.tb_audit_event
(
    audit_field             integer not null references cyanaudit.tb_audit_field,
    pk_vals                 text[] not null,
    recorded                timestamp not null default clock_timestamp(),
    uid                     integer not null,
    row_op                  char(1) not null,
    txid                    bigint not null default txid_current(),
    audit_transaction_type  integer references cyanaudit.tb_audit_transaction_type,
    old_value               text,
    new_value               text,
    CONSTRAINT tb_audit_event_consistency_chk
        CHECK( case row_op when 'I' then old_value is null
                           when 'D' then new_value is null
                           when 'U' then old_value is distinct from new_value
                           else false end )
);

COMMENT ON TABLE cyanaudit.tb_audit_event
    IS 'Parent table for sharded audit logs. Only child tables contain data.';


------------------------
------ FUNCTIONS ------
------------------------

----- User/Application Functions ----

-- fn_set_current_uid
CREATE OR REPLACE FUNCTION cyanaudit.fn_set_current_uid
(
    in_uid   integer
)
returns integer
language sql strict
as $_$
    select set_config( 'cyanaudit.uid', in_uid::varchar, false )::integer;
 $_$;

COMMENT ON FUNCTION cyanaudit.fn_set_current_uid( integer )
    IS 'Sets the uid to which future operations in this session will be attributed.';


-- fn_get_current_uid
CREATE OR REPLACE FUNCTION cyanaudit.fn_get_current_uid()
returns integer
language plpgsql stable
as $_$
declare
    my_uid    integer;
begin
    my_uid := nullif( current_setting( 'cyanaudit.uid', true ), '' );

    if my_uid is null or my_uid < 0 then
        select cyanaudit.fn_get_uid_by_username( current_user::varchar )
          into my_uid;
    end if;

    return cyanaudit.fn_set_current_uid( coalesce( my_uid, 0 ) );
end
 $_$;

COMMENT ON FUNCTION cyanaudit.fn_get_current_uid()
    IS 'Returns the uid set by fn_set_current_uid(), or 0 if unset..';



-- fn_get_last_txid
CREATE OR REPLACE FUNCTION cyanaudit.fn_get_last_txid()
returns bigint
language sql stable
as $_$
    select case when current_setting( 'cyanaudit.last_txid', true ) ~ '^\d+$'
                then current_setting( 'cyanaudit.last_txid' )
                else null
           end::bigint;
 $_$;


-- fn_get_or_create_audit_transaction_type
CREATE OR REPLACE FUNCTION cyanaudit.fn_get_or_create_audit_transaction_type
(
    in_label    varchar
)
returns integer
language plpgsql strict
as $_$
declare
    my_audit_transaction_type   integer;
begin
    select audit_transaction_type
      into my_audit_transaction_type
      from cyanaudit.tb_audit_transaction_type
     where label = in_label;

    if not found then
        insert into cyanaudit.tb_audit_transaction_type
        (
            label
        )
        values
        (
            in_label
        )
        returning audit_transaction_type
        into my_audit_transaction_type;
    end if;

    return my_audit_transaction_type;
end
 $_$;


-- fn_label_transaction
CREATE OR REPLACE FUNCTION cyanaudit.fn_label_transaction
(
    in_label    varchar,
    in_txid     bigint default txid_current()
)
returns void
as $_$
    update cyanaudit.tb_audit_event
       set audit_transaction_type = cyanaudit.fn_get_or_create_audit_transaction_type( in_label )
     where txid = in_txid
       and audit_transaction_type is null;
 $_$
    language sql;

COMMENT ON FUNCTION cyanaudit.fn_label_transaction( varchar, bigint )
    IS 'Applies description to completed operations in the given transaction.';



-- fn_label_last_transaction
CREATE OR REPLACE FUNCTION cyanaudit.fn_label_last_transaction
(
    in_label    varchar
)
returns void as
 $_$
    select cyanaudit.fn_label_transaction
           (
                in_label,
                cyanaudit.fn_get_last_txid()
           );
 $_$
    language sql strict;

COMMENT ON FUNCTION cyanaudit.fn_label_last_transaction( varchar )
    IS 'Shorthand for: fn_label_last_transaction( in_label, cyanaudit.fn_get_last_txid() )';


CREATE OR REPLACE FUNCTION cyanaudit.fn_set_transaction_label
(
    in_label    varchar
)
returns integer as
 $_$
    SELECT set_config( 'cyanaudit.audit_transaction_type',
                       cyanaudit.fn_get_or_create_audit_transaction_type( in_label )::text,
                       true )::integer;
 $_$
    language sql strict;



-- fn_undo_transaction
CREATE OR REPLACE FUNCTION cyanaudit.fn_undo_transaction
(
    in_txid   bigint
)
returns setof varchar
as $_$
declare
    my_statement    varchar;
begin
    for my_statement in
        select query
          from cyanaudit.vw_undo_statement
         where txid = in_txid
    loop
        execute my_statement;
        return next my_statement;
    end loop;

    perform cyanaudit.fn_label_transaction('Undo transaction');

    return;
end
 $_$
    language plpgsql strict;



-- fn_undo_last_transaction
CREATE OR REPLACE FUNCTION cyanaudit.fn_undo_last_transaction()
returns setof varchar as
 $_$
    select cyanaudit.fn_undo_transaction(cyanaudit.fn_get_last_txid());
 $_$
    language 'sql';

COMMENT ON FUNCTION cyanaudit.fn_undo_last_transaction()
    IS 'Shorthand for: cyanaudit.fn_undo_transaction( cyanaudit.fn_get_last_txid() )';



-- fn_update_audit_fields
-- Create or update audit_fields for all columns in the passed-in schema.
-- If passed-in schema is null, create or update for all already-known schemas.
CREATE OR REPLACE FUNCTION cyanaudit.fn_update_audit_fields
(
    in_schema            varchar default null
)
returns void as
 $_$
declare
    my_schemas           varchar[];
begin
    if pg_trigger_depth() > 0 then
        return;
    end if;

    -- Add only those tables in the passed-in schemas.
    -- If no schemas are passed in, use only those we already know about.
    -- This way, we will never log any schema that has not been explicitly
    -- requested to be logged.
    select case when in_schema is not null
                then ARRAY[ in_schema ]
                else array_agg( distinct table_schema )
           end
      into my_schemas
      from cyanaudit.tb_audit_field;

    with tt_audit_fields as
    (
        select coalesce
               (
                    af.audit_field,
                    cyanaudit.fn_get_or_create_audit_field
                    (
                        n.nspname::varchar,
                        c.relname::varchar,
                        a.attname::varchar
                    )
               ) as audit_field,
               (a.attnum is null and af.loggable) as stale
          from (
                    pg_class c
               join pg_attribute a
                 on a.attrelid = c.oid
                and a.attnum > 0
                and a.attisdropped is false
               join pg_namespace n
                 on c.relnamespace = n.oid
                and n.nspname::varchar = any( my_schemas )
               join pg_constraint cn
                 on conrelid = c.oid
                and cn.contype = 'p'
               )
     full join cyanaudit.tb_audit_field af
            on af.table_schema = n.nspname::varchar
           and af.table_name   = c.relname::varchar
           and af.column_name  = a.attname::varchar
           and af.loggable is true
    )
    update cyanaudit.tb_audit_field af
       set loggable = false -- trigger will update to actual value
      from tt_audit_fields ttaf
     where af.audit_field = ttaf.audit_field
       and af.loggable
       and ttaf.stale;

    return;
end;
 $_$
    language 'plpgsql';

COMMENT ON FUNCTION cyanaudit.fn_update_audit_fields( varchar )
    IS 'Updates tb_audit_field to reflect any new or dropped columns in known schemas.';





---- INTERNAL UTILITY FUNCTIONS ----

-- fn_get_email_by_uid
CREATE OR REPLACE FUNCTION cyanaudit.fn_get_email_by_uid
(
    in_uid  integer
)
returns varchar
language plpgsql stable strict
as $_$
declare
    my_email                varchar;
    my_query                varchar;
    my_user_table_uid_col   varchar;
    my_user_table           varchar;
    my_user_table_email_col varchar;
begin
    select value
      into my_user_table
      from cyanaudit.tb_config
     where name = 'user_table';

    select value
      into my_user_table_uid_col
      from cyanaudit.tb_config
     where name = 'user_table_uid_col';

    select value
      into my_user_table_email_col
      from cyanaudit.tb_config
     where name = 'user_table_email_col';

    if my_user_table            IS NULL OR
       my_user_table_uid_col    IS NULL OR
       my_user_table_email_col  IS NULL
    then
        return null;
    end if;

    my_query := 'SELECT ' || quote_ident(my_user_table_email_col)
             || '  FROM ' || quote_ident(my_user_table)
             || ' WHERE ' || quote_ident(my_user_table_uid_col)
                          || ' = ' || quote_nullable(in_uid);
    execute my_query
       into my_email;

    return my_email;
exception
    when undefined_table then
         raise notice 'cyanaudit: Invalid user_table setting: ''%''', my_user_table;
         return null;
    when undefined_column then
         raise notice 'cyanaudit: Invalid user_table_uid_col (''%'') or user_table_email_col (''%'')',
            my_user_table_uid_col, my_user_table_email_col;
         return null;
end
 $_$;



-- fn_get_uid_by_username
CREATE OR REPLACE FUNCTION cyanaudit.fn_get_uid_by_username
(
    in_username varchar
)
returns integer
language plpgsql stable strict
as $_$
declare
    my_uid                      varchar;
    my_query                    varchar;
    my_user_table_uid_col       varchar;
    my_user_table               varchar;
    my_user_table_username_col  varchar;
begin
    select value
      into my_user_table
      from cyanaudit.tb_config
     where name = 'user_table';

    select value
      into my_user_table_uid_col
      from cyanaudit.tb_config
     where name = 'user_table_uid_col';

    select value
      into my_user_table_username_col
      from cyanaudit.tb_config
     where name = 'user_table_username_col';

    if my_user_table                IS NULL OR
       my_user_table_uid_col        IS NULL OR
       my_user_table_username_col   IS NULL
    then
        return null;
    end if;

    my_query := 'select ' || quote_ident(my_user_table_uid_col)
             || '  from ' || quote_ident(my_user_table)
             || ' where ' || quote_ident(my_user_table_username_col)
                          || ' = ' || quote_nullable(in_username);
    execute my_query
       into my_uid;

    return my_uid;
exception
    when undefined_table then
         raise notice 'cyanaudit: Invalid user_table setting: ''%''', my_user_table;
         return null;
    when undefined_column then
         raise notice 'cyanaudit: Invalid user_table_uid_col (''%'') or user_table_username_col (''%'')',
            my_user_table_uid_col, my_user_table_username_col;
         return null;
end
 $_$;


-- fn_get_table_pk_cols
CREATE OR REPLACE FUNCTION cyanaudit.fn_get_table_pk_cols
(
    in_table_name   varchar,
    in_table_schema varchar default 'public'
)
returns varchar[]
language sql stable strict
as $_$
    with tt_conkey as
    (
        SELECT cn.conkey,
               c.oid as relid
          from pg_class c
          join pg_namespace n
            on c.relnamespace = n.oid
          join pg_constraint cn
            on c.oid = cn.conrelid
         where cn.contype = 'p'
           and c.relname::varchar = in_table_name
           and n.nspname::varchar = in_table_schema
    ),
    tt_subscripts as
    (
        select generate_subscripts( conkey, 1 ) as i
          from tt_conkey
    )
    select array_agg( a.attname order by s.i )::varchar[]
      from tt_subscripts s
cross join tt_conkey c
      join pg_attribute a
        on c.conkey[s.i] = a.attnum
       and c.relid = a.attrelid
 $_$;


-- fn_get_where_string
-- Takes in array of pk_cols and array of values
-- Returns a correctly quoted string 'pkcol1 = val1 AND pkcol2 = val2' etc.
CREATE OR REPLACE FUNCTION cyanaudit.fn_get_where_string
(
    in_pk_cols  varchar[],
    in_values   varchar[]
)
returns text as
 $_$
    with tt_names_values as
    (
        select unnest( in_pk_cols ) as colname,
               unnest( in_values )  as value
    )
    select string_agg( format( '%I = %L', colname, value ), ' AND ' )
      from tt_names_values;
 $_$
    language sql strict immutable;



-- fn_get_or_create_audit_field
CREATE OR REPLACE FUNCTION cyanaudit.fn_get_or_create_audit_field
(
    in_table_schema     varchar,
    in_table_name       varchar,
    in_column_name      varchar
)
returns integer as
 $_$
declare
    my_audit_field  integer;
    my_loggable     boolean;
begin
    select audit_field,
           loggable
      into my_audit_field,
           my_loggable
      from cyanaudit.tb_audit_field
     where table_schema = in_table_schema
       and table_name = in_table_name
       and column_name = in_column_name;

    if not found then
        insert into cyanaudit.tb_audit_field
        (
            table_schema,
            table_name,
            column_name
        )
        values
        (
            in_table_schema,
            in_table_name,
            in_column_name
        )
        returning audit_field
        into my_audit_field;
    elsif my_loggable is false then
        update cyanaudit.tb_audit_field
           set loggable = loggable -- trigger will set correct value
         where audit_field = my_audit_field;
    end if;

    return my_audit_field;
end
 $_$
    language 'plpgsql';



-----------------------
------ TRIGGERS -------
-----------------------

-- fn_log_audit_event (MAIN LOGGING TRIGGER FUNCTION)
CREATE OR REPLACE FUNCTION cyanaudit.fn_log_audit_event()
 RETURNS trigger
 LANGUAGE plpgsql
AS $_$
declare
    my_audit_fields         varchar[];
    my_audit_field          integer;
    my_column_names         varchar[];
    my_column_name          varchar;
    my_new_row              record;
    my_old_row              record;
    my_pk_cols              varchar;
    my_pk_vals_constructor  varchar;
    my_pk_vals              varchar[];
    my_old_value            text;
    my_new_value            text;
    my_clock_timestamp      timestamp;
    my_enabled              text;
    my_exception_text       text;
begin
    my_exception_text := 'cyanaudit: Operation not logged';

    if( TG_OP = 'INSERT' ) then
        my_new_row := NEW;
        my_old_row := NEW;
    elsif( TG_OP = 'UPDATE' ) then
        my_new_row := NEW;
        my_old_row := OLD;
    elsif( TG_OP = 'DELETE' ) then
        my_new_row := OLD;
        my_old_row := OLD;
    end if;

    my_enabled := current_setting( 'cyanaudit.enabled', true );

    if my_enabled = '0' or my_enabled = 'false' or my_enabled = 'f' then
        return my_new_row;
    end if;

    my_pk_cols          := TG_ARGV[0]::varchar[];
    my_audit_fields     := TG_ARGV[1]::varchar[];
    my_column_names     := TG_ARGV[2]::varchar[];

    my_clock_timestamp  := clock_timestamp(); -- same for all entries from this invocation

    -- Bookmark this txid in cyanaudit.last_txid
    perform (set_config('cyanaudit.last_txid', txid_current()::text, false))::bigint;

    -- Given:  my_pk_cols::varchar[]           = ARRAY[ 'column foo',bar ]
    -- Result: my_pk_vals_constructor::varchar = 'select ARRAY[ $1."column foo", $1.bar ]::varchar[]'
    select 'SELECT ARRAY[' || string_agg( '$1.' || quote_ident(pk_col), ',' ) || ']::varchar[]'
      into my_pk_vals_constructor
      from ( select unnest(my_pk_cols::varchar[]) as pk_col ) x;

    -- Execute the result using my_new_row in $1 to produce the following result:
    -- my_pk_vals::varchar[] = ARRAY[ 'val1', 'val2' ]
    execute my_pk_vals_constructor
       into my_pk_vals
      using my_new_row; -- To allow undoing updates to pk columns, logged pk_vals are post-update.

    for my_column_name, my_audit_field in
        select unnest( my_column_names::varchar[] ),
               unnest( my_audit_fields::varchar[] )
    loop
        if TG_OP = 'INSERT' THEN
            EXECUTE format('select null::text, $1.%I::text', my_column_name)
               INTO my_old_value, my_new_value
              USING my_new_row;

            CONTINUE when my_new_value is null;

        elsif TG_OP = 'UPDATE' THEN
            EXECUTE format( 'select $1.%1$I::text, $2.%1$I::text', my_column_name)
               INTO my_old_value, my_new_value
              USING my_old_row, my_new_row;

            CONTINUE when my_old_value is not distinct from my_new_value;

        elsif TG_OP = 'DELETE' THEN
            EXECUTE format('select $1.%I::text, null::text', my_column_name)
               INTO my_old_value, my_new_value
              USING my_old_row;

            CONTINUE when my_old_value is null;

        end if;


        execute format( 'INSERT INTO cyanaudit.tb_audit_event '
                     || '( audit_field, recorded, pk_vals, uid, row_op, audit_transaction_type, old_value, new_value ) '
                     || 'VALUES(  $1, $2, $3, $4, $5::char(1), $6, $7, $8 ) ',
                        my_column_name
                      )
          using my_audit_field,
                my_clock_timestamp,
                my_pk_vals,
                cyanaudit.fn_get_current_uid(),
                TG_OP,
                current_setting( 'cyanaudit.audit_transaction_type', true )::integer,
                my_old_value,
                my_new_value;
    end loop;

    return new;
exception
    when foreign_key_violation OR undefined_column then
         raise notice '%: %: %: Please run fn_update_audit_fields().',
            my_exception_text, SQLSTATE, SQLERRM;
         return my_new_row;
    when undefined_function OR undefined_table OR insufficient_privilege then
         raise notice '%: %: %: Please reinstall cyanaudit.',
            my_exception_text, SQLSTATE, SQLERRM;
         return my_new_row;
    when others then
         raise notice '%: %: %: Please report error.',
            my_exception_text, SQLSTATE, SQLERRM;
         return my_new_row;
end
$_$;

COMMENT ON FUNCTION cyanaudit.fn_log_audit_event()
    IS 'Trigger function installed on all tables logged by Cyan Audit.';






-- fn_before_audit_field_change
CREATE OR REPLACE FUNCTION cyanaudit.fn_before_audit_field_change()
returns trigger as
 $_$
declare
    my_pk_colname       varchar;
begin
    IF TG_OP = 'INSERT' THEN
        if NEW.table_schema = 'cyanaudit' then return NULL; end if;
    ELSIF TG_OP = 'DELETE' then
        raise exception 'cyanaudit: Deletion from this table is not allowed.';
    ELSIf TG_OP = 'UPDATE' then
        if NEW.table_schema != OLD.table_schema OR
           NEW.table_name  != OLD.table_name OR
           NEW.column_name != OLD.column_name
        then
            raise exception 'Updating table_schema, table_name or column_name not allowed.';
        end if;
    end if;

   perform *
      from pg_attribute a
      join pg_class c
        on a.attrelid = c.oid
      join pg_namespace n
        on c.relnamespace = n.oid
      join pg_constraint cn
        on conrelid = c.oid
     where n.nspname::varchar = NEW.table_schema
       and c.relname::varchar = NEW.table_name
       and a.attname::varchar = NEW.column_name
       and cn.contype = 'p'
       and a.attnum > 0
       and a.attisdropped is false;

    NEW.loggable := found;

    -- Got to double check our value if it's true
    if NEW.enabled is null then
        -- Sensible default value for "enabled" is important to avoid freaking people out:

        -- If any column on same table is enabled, then true.
        -- Else If we know of fields on this table but all are inactive, then false.
        -- Else If we know of no fields in this table, then:
            -- If any field in same schema is enabled, then true.
            -- Else If we know of fields in this schema but all are inactive, then false.
            -- Else If we know of no columns in this schema, then:
                -- If any column in the database is enabled, then true.
                -- Else If we know of fields in this database but all are inactive, then false.
                -- Else, true:
        select enabled
          into NEW.enabled
          from cyanaudit.tb_audit_field
      order by (table_name = NEW.table_name) desc, -- Sort enabled fields over table to top of that
               (table_schema = NEW.table_schema) desc, -- Sort enabled fields within schema to top of that
               enabled desc; -- Sort any remaining enabled fields to the top

        -- If we got here, we found no fields in the db. Activate logging by default.
        if NEW.enabled is null then
            NEW.enabled = true;
        end if;
    end if;

    return NEW;
end
 $_$
    language plpgsql;


DROP TRIGGER IF EXISTS tr_before_audit_field_change on cyanaudit.tb_audit_field;
CREATE TRIGGER tr_before_audit_field_change
    BEFORE INSERT OR UPDATE ON cyanaudit.tb_audit_field
    FOR EACH ROW EXECUTE PROCEDURE cyanaudit.fn_before_audit_field_change();


-- fn_after_audit_field_change
CREATE OR REPLACE FUNCTION cyanaudit.fn_after_audit_field_change()
returns trigger
language plpgsql
as $_$
declare
    my_pk_colnames      varchar[];
    my_function_name    varchar;
    my_audit_fields     varchar[];
    my_column_names     varchar[];
begin
    if TG_OP = 'UPDATE' and OLD.enabled = NEW.enabled and OLD.loggable = NEW.loggable THEN
        return NEW;
    end if;

    perform cyanaudit.fn_verify_active_partition();

    -- See if a logging trigger is already on the table
    perform *
       from pg_trigger t
       join pg_class c
         on t.tgrelid = c.oid
       join pg_namespace n
         on c.relnamespace = n.oid
      where n.nspname::varchar = NEW.table_schema
        and c.relname::varchar = NEW.table_name
        and tgname = 'tr_log_audit_event';

    -- If so, remove it so we can update it.
    IF FOUND THEN
        execute format( 'DROP TRIGGER tr_log_audit_event ON %I.%I',
                        NEW.table_schema, NEW.table_name );
    END IF;

    -- Get a list of audit fields and column names for this table
    select array_agg(audit_field),
           array_agg(column_name)
      into my_audit_fields,
           my_column_names
      from cyanaudit.tb_audit_field
     where enabled
       and loggable
       and table_schema = NEW.table_schema
       and table_name = NEW.table_name;

    IF array_length(my_audit_fields, 1) > 0 THEN
        my_pk_colnames := cyanaudit.fn_get_table_pk_cols( NEW.table_name, NEW.table_schema );

        -- Create the table trigger (if it doesn't exist) to call the function
        execute format( 'CREATE TRIGGER tr_log_audit_event '
                     || 'AFTER INSERT OR UPDATE OR DELETE ON %I.%I FOR EACH ROW '
                     || 'EXECUTE PROCEDURE cyanaudit.fn_log_audit_event(%L,%L,%L)',
                        NEW.table_schema,
                        NEW.table_name,
                        my_pk_colnames,
                        my_audit_fields,
                        my_column_names
                      );
    END IF;

    return NEW;
end
 $_$;

DROP TRIGGER IF EXISTS tr_after_audit_field_change on cyanaudit.tb_audit_field;
CREATE TRIGGER tr_after_audit_field_change
    AFTER INSERT OR UPDATE on cyanaudit.tb_audit_field
    FOR EACH ROW EXECUTE PROCEDURE cyanaudit.fn_after_audit_field_change();



-- EVENT TRIGGER
-- fn_update_audit_fields_event_trigger()
CREATE OR REPLACE FUNCTION cyanaudit.fn_update_audit_fields_event_trigger()
returns event_trigger
language plpgsql as
   $function$
begin
    -- Avoid creating logging triggers during database restore,
    -- since the triggers will be restored without our help.
    perform *
       from pg_stat_activity
      where application_name = 'pg_restore'
        and datname = current_database()
        and state = 'active';

    if not found then
        perform cyanaudit.fn_update_audit_fields();
    end if;
exception
     when insufficient_privilege
     then return;
end
   $function$;



-- fn_create_event_trigger
-- Function to install the event trigger explicitly after pg_restore completes,
-- because we don't want it firing during pg_restore.
CREATE OR REPLACE FUNCTION cyanaudit.fn_create_event_trigger()
RETURNS void
LANGUAGE plpgsql
AS $_$
begin
    PERFORM *
       from pg_event_trigger
      where evtname = 'tr_update_audit_fields';

    if not found then
        CREATE EVENT TRIGGER tr_update_audit_fields ON ddl_command_end
            WHEN TAG IN ('ALTER TABLE', 'CREATE TABLE', 'DROP TABLE')
            EXECUTE PROCEDURE cyanaudit.fn_update_audit_fields_event_trigger();

    end if;
end;
 $_$;

COMMENT ON FUNCTION cyanaudit.fn_create_event_trigger()
    IS 'Installs event trigger to run fn_update_audit_fields() on any schema change.';




--------- Partitioning -----------

-- fn_redirect_audit_events
-- This trigger function is installed onto tb_audit_event
CREATE OR REPLACE FUNCTION cyanaudit.fn_redirect_audit_events()
returns trigger as
 $_$
declare
    my_table_name   varchar;
begin
    my_table_name := TG_ARGV[0];

    execute format( 'insert into cyanaudit.%I select $1.*', my_table_name )
      using NEW;

    return null;
end
 $_$
    language 'plpgsql';


-- fn_parse_tgargs
-- This is a handy utility function to get the TGARGS values passed into a
-- trigger function. Used for validating the active partition name, below
CREATE OR REPLACE FUNCTION cyanaudit.fn_parse_tgargs
(
    in_tgargs   BYTEA
)
RETURNS VARCHAR[] AS
 $_$
    SELECT string_to_array(
               regexp_replace(
                   encode(
                       in_tgargs,
                       'escape'
                   )::VARCHAR,
                   '\\000$',
                   ''
               ),
               '\000'
           )::VARCHAR[];
 $_$
    LANGUAGE SQL IMMUTABLE;


-- fn_get_active_partition_name
CREATE OR REPLACE FUNCTION cyanaudit.fn_get_active_partition_name()
returns varchar as
 $_$
    select (cyanaudit.fn_parse_tgargs( tgargs ))[1]
      from pg_trigger t
      join pg_class c
        on t.tgrelid = c.oid
      join pg_namespace n
        on c.relnamespace = n.oid
     where n.nspname = 'cyanaudit'
       and c.relname = 'tb_audit_event'
       and t.tgname = 'tr_redirect_audit_events';
 $_$
    language sql;


-- fn_create_new_partition
CREATE OR REPLACE FUNCTION cyanaudit.fn_create_new_partition
(
    in_new_table_name varchar default 'tb_audit_event_' || to_char(now(), 'YYYYMMDD_HH24MI')
)
returns varchar as
 $_$
begin
    if in_new_table_name !~ '^tb_audit_event_\d{8}_\d{4}$' then
        raise exception 'Table name must conform to format "tb_audit_event_########_####"';
    end if;

    perform *
       from pg_class c
       join pg_namespace n
         on c.relnamespace = n.oid
      where c.relname = in_new_table_name
        and n.nspname = 'cyanaudit';

    if found then
        return null;
    end if;

    SET LOCAL client_min_messages to WARNING;

    execute format( 'CREATE TABLE cyanaudit.%I '
                 || '( '
                 || '  LIKE cyanaudit.tb_audit_event INCLUDING STORAGE INCLUDING CONSTRAINTS '
                 || ') ',
                    in_new_table_name );

    execute format( 'GRANT insert, '
                 || '      select (audit_transaction_type, txid), '
                 || '      update (audit_transaction_type) '
                 || '   ON cyanaudit.%I '
                 || '   TO public ',
                    in_new_table_name );

    SET LOCAL client_min_messages to NOTICE;

    return in_new_table_name;
end
 $_$
    language plpgsql;


-- fn_activate_partition
CREATE OR REPLACE FUNCTION cyanaudit.fn_activate_partition
(
    in_partition_name   varchar
)
returns void as
 $_$
declare
    my_active_partition_name   varchar;
begin
    if in_partition_name is null then
        raise exception 'in_partition_name cannot be null';
    end if;

    my_active_partition_name := cyanaudit.fn_get_active_partition_name();

    if my_active_partition_name = in_partition_name then
        -- already configured correctly
        return;
    end if;

    if my_active_partition_name is not null then
        DROP TRIGGER tr_redirect_audit_events on cyanaudit.tb_audit_event;
    end if;

    execute format( 'CREATE TRIGGER tr_redirect_audit_events '
                 || 'before insert on cyanaudit.tb_audit_event for each row '
                 || 'execute procedure cyanaudit.fn_redirect_audit_events( %L ) ',
                    in_partition_name );
    return;
end
 $_$
    language plpgsql;


-- fn_create_partition_indexes
CREATE OR REPLACE FUNCTION cyanaudit.fn_create_partition_indexes
(
    in_table_name   varchar
)
returns void as
 $_$
declare
    my_index_columns        varchar[];
    my_index_column         varchar;
    my_index_name           varchar;
    my_tablespace_clause    varchar;
begin
    my_index_columns := array[ 'recorded', 'txid', 'audit_field' ];

    foreach my_index_column in array my_index_columns
    loop
        my_index_name := format( 'ix_%s_%s', right( in_table_name, -3 ), my_index_column );

        perform *
           from pg_index i
           join pg_class ci
             on i.indexrelid = ci.oid
           join pg_class c
             on i.indrelid = c.oid
           join pg_namespace n
             on c.relnamespace = n.oid
          where n.nspname = 'cyanaudit'
            and c.relname = in_table_name
            and ci.relname = my_index_name;

        if not found then
            -- Use tablespace of in_table_name. If default, this will be empty.
            select format( 'TABLESPACE %I', t.spcname )
              into my_tablespace_clause
              from pg_class c
              join pg_tablespace t
                on c.reltablespace = t.oid
              join pg_namespace n
                on c.relnamespace = n.oid
               and n.nspname = 'cyanaudit'
             where c.relname = in_table_name;

            execute format( 'CREATE INDEX %I on cyanaudit.%I ( %I ) %s',
                            my_index_name,
                            in_table_name,
                            my_index_column,
                            coalesce( my_tablespace_clause, '' )
                          );
        end if;
    end loop;
end
 $_$
    language plpgsql;


-- fn_setup_partition_constraints
CREATE OR REPLACE FUNCTION cyanaudit.fn_setup_partition_constraints
(
    in_table_name   varchar,
    in_force        boolean default false
)
returns void as
 $_$
declare
    my_min_recorded     timestamp;
    my_max_recorded     timestamp;
    my_min_txid         bigint;
    my_max_txid         bigint;
    my_constraint_name  varchar;
    my_constraint_src   text;
begin
    if in_table_name is null then
        raise exception 'Table name cannot be null';
    end if;

    my_constraint_name := 'partition_range_chk';

     select cn.consrc
       into my_constraint_src
       from pg_constraint cn
       join pg_class c
         on cn.conrelid = c.oid
       join pg_namespace n
         on c.relnamespace = n.oid
      where n.nspname = 'cyanaudit'
        and cn.conname = my_constraint_name
        and c.relname = in_table_name;

    if ( my_constraint_src not like '%txid%' and in_table_name != cyanaudit.fn_get_active_partition_name() )
       OR
       ( my_constraint_src is not null and in_force is true )
    then
        execute format( 'alter table cyanaudit.%I drop constraint %I',
                        in_table_name, my_constraint_name );
    elsif my_constraint_src is not null then
        return;
    end if;

    execute format( 'analyze cyanaudit.%I', in_table_name );

    execute format( 'select min(recorded), max(recorded), min(txid), max(txid) from cyanaudit.%I',
                    in_table_name )
       into my_min_recorded, my_max_recorded, my_min_txid, my_max_txid;

    if my_min_recorded is null
        OR in_table_name = cyanaudit.fn_get_active_partition_name()
    then
        execute format( 'ALTER TABLE cyanaudit.%I add constraint %I '
                     || ' CHECK( recorded >= %L )',
                        in_table_name, my_constraint_name, coalesce( my_min_recorded, now() ) );
    else
        execute format( 'ALTER TABLE cyanaudit.%I add constraint %I '
                    || ' CHECK( recorded between %L and %L and txid between %L and %L )',
                       in_table_name, my_constraint_name,
                       my_min_recorded, my_max_recorded, my_min_txid, my_max_txid );
    end if;

    -- Install FK to tb_audit_field if not present
    perform *
       from pg_constraint cn
       join pg_class c
         on cn.conrelid = c.oid
       join pg_namespace n
         on c.relnamespace = n.oid
       join pg_class cf
         on cn.confrelid = cf.oid
       join pg_namespace nf
         on cf.relnamespace = nf.oid
      where n.nspname = 'cyanaudit'
        and c.relname = in_table_name
        and nf.nspname = 'cyanaudit'
        and cf.relname = 'tb_audit_field';

    if not found then
        execute format( 'ALTER TABLE cyanaudit.%I '
                     || '  ADD FOREIGN KEY ( audit_field ) '
                     || '      references cyanaudit.tb_audit_field',
                        in_table_name );
    end if;

    -- Install FK to tb_audit_transaction_type if not present
    perform *
       from pg_constraint cn
       join pg_class c
         on cn.conrelid = c.oid
       join pg_namespace n
         on c.relnamespace = n.oid
       join pg_class cf
         on cn.confrelid = cf.oid
       join pg_namespace nf
         on cf.relnamespace = nf.oid
      where n.nspname = 'cyanaudit'
        and c.relname = in_table_name
        and nf.nspname = 'cyanaudit'
        and cf.relname = 'tb_audit_transaction_type';

    if not found then
        execute format( 'ALTER TABLE cyanaudit.%I '
                     || '  ADD FOREIGN KEY ( audit_transaction_type ) '
                     || '      references cyanaudit.tb_audit_transaction_type',
                        in_table_name );
    end if;
end
 $_$
    language plpgsql;


-- fn_setup_partition_inheritance
CREATE OR REPLACE FUNCTION cyanaudit.fn_setup_partition_inheritance
(
    in_partition_name       varchar,
    in_break_inheritance    boolean default false
)
returns void as
 $_$
begin
    if in_partition_name is null then
        raise exception 'in_partition_name must not be null.';
    end if;

    if in_partition_name = cyanaudit.fn_get_active_partition_name()
        AND in_break_inheritance
    then
        raise exception 'cyanaudit: refusing to break inheritance on active partition';
    end if;

    -- See if inheritance is already set up for this table
    perform *
       from pg_inherits i
       join pg_class c_child
         on i.inhrelid = c_child.oid
       join pg_namespace n_child
         on c_child.relnamespace = n_child.oid
        and n_child.nspname = 'cyanaudit'
       join pg_class c_parent
         on i.inhparent = c_parent.oid
       join pg_namespace n_parent
         on c_parent.relnamespace = n_parent.oid
        and n_parent.nspname = 'cyanaudit'
      where c_child.relname = in_partition_name
        and c_parent.relname = 'tb_audit_event';

    if not found then
        if in_break_inheritance is false then
            execute format( 'ALTER TABLE cyanaudit.%I INHERIT cyanaudit.tb_audit_event',
                            in_partition_name );
        end if;
    else
        if in_break_inheritance is true then
            execute format( 'ALTER TABLE cyanaudit.%I NO INHERIT cyanaudit.tb_audit_event',
                            in_partition_name );
        end if;
    end if;
end
 $_$
    language plpgsql;



-- fn_verify_active_partition()
CREATE OR REPLACE FUNCTION cyanaudit.fn_verify_active_partition()
returns varchar as
 $_$
declare
    my_partition_name   varchar;
begin
    select c.relname
      into my_partition_name
      from pg_class c
      join pg_namespace n
        on c.relnamespace = n.oid
       and n.nspname = 'cyanaudit'
     where c.relname = cyanaudit.fn_get_active_partition_name();

    if my_partition_name is null then
        my_partition_name := cyanaudit.fn_create_new_partition();
        perform cyanaudit.fn_verify_partition_config( my_partition_name );
        perform cyanaudit.fn_activate_partition( my_partition_name );
    end if;

    return my_partition_name;
end
 $_$
    language plpgsql;


CREATE OR REPLACE FUNCTION cyanaudit.fn_verify_partition_config
(
    in_partition_name   varchar
)
returns varchar as
 $_$
begin
    if in_partition_name is null then
        raise exception 'cyanaudit: fn_verify_partition_config: in_partition_name must be specified';
    end if;

    perform *
       from pg_inherits i
       join pg_class cp
         on cp.oid = i.inhparent
       join pg_namespace np
         on cp.relnamespace = np.oid
       join pg_class cc
         on cc.oid = i.inhrelid
       join pg_namespace nc
         on cc.relnamespace = nc.oid
      where nc.nspname = 'cyanaudit'
        and np.nspname = 'cyanaudit'
        and cc.relname = in_partition_name
        and cp.relname = 'tb_audit_event';

    if found and in_partition_name != cyanaudit.fn_get_active_partition_name() then
        raise exception 'cyanaudit: please run fn_setup_partition_inheritance( ''%'', true ) first.',
            in_partition_name;
    end if;

    -- Only set up the constraint if we're not restoring, since we don't know in
    -- this case that the lower bound is now(), as the function will assume.
    if current_setting( 'cyanaudit.in_restore', true )::boolean is distinct from true then
        perform cyanaudit.fn_setup_partition_constraints( in_partition_name );
    end if;

    perform cyanaudit.fn_create_partition_indexes( in_partition_name );
    perform cyanaudit.fn_archive_partition( in_partition_name );
    perform cyanaudit.fn_setup_partition_inheritance( in_partition_name );

    return in_partition_name;
end
 $_$
    language plpgsql;



-------- Partition Archiving ---------

CREATE OR REPLACE FUNCTION cyanaudit.fn_archive_partition
(
    in_partition_name   varchar
)
returns void as
 $_$
declare
    my_archive_tablespace   varchar;
    my_index_name           varchar;
begin
    if in_partition_name = cyanaudit.fn_get_active_partition_name() then
        raise notice 'cyanaudit: Skipping archival of active partition.';
        return;
    end if;

    select c.value
      into my_archive_tablespace
      from cyanaudit.tb_config c
      join pg_tablespace t
        on c.value = t.spcname::text
     where c.name = 'archive_tablespace';

    if not found then
        raise notice 'cyanaudit: Missing or invalid config value for ''archive_tablespace''. Skipping.';
        return;
    end if;

    for my_index_name in
        select ci.relname
          from pg_index i
          join pg_class ci
            on i.indexrelid = ci.oid
          join pg_class c
            on i.indrelid = c.oid
           and c.relname = in_partition_name
          join pg_namespace n
            on c.relnamespace = n.oid
           and n.nspname = 'cyanaudit'
         where c.relname = in_partition_name
    loop
        execute format( 'alter index cyanaudit.%I set tablespace %I',
                        my_index_name, my_archive_tablespace );
    end loop;

    execute format( 'alter table cyanaudit.%I set tablespace %I',
                    in_partition_name, my_archive_tablespace );
end
 $_$
    language plpgsql strict;



CREATE OR REPLACE FUNCTION cyanaudit.fn_get_partitions_over_quantity_limit
(
    in_quantity integer
)
returns setof text as
 $_$
    select c.relname::text
      from pg_class c
      join pg_namespace n
        on c.relnamespace = n.oid
       and n.nspname = 'cyanaudit'
     where c.relkind = 'r'
       and c.relname ~ '^tb_audit_event_\d{8}_\d{4}$'
  order by c.relname desc
    offset in_quantity + 1
 $_$
    language sql strict;


CREATE OR REPLACE FUNCTION cyanaudit.fn_get_partitions_over_size_limit
(
    in_size_gb bigint
)
returns setof text as
 $_$
    with tt_cumulative_size as
    (
        select c.relname::text,
               sum( pg_total_relation_size(c.oid) )
                over( order by c.relname desc rows unbounded preceding )
          from pg_class c
          join pg_namespace n
            on c.relnamespace = n.oid
         where n.nspname = 'cyanaudit'
           and c.relname like 'tb_audit_event_%'
    )
    select relname
      from tt_cumulative_size
     where sum > in_size_gb * 1000000000::bigint
  order by relname;
 $_$
    language sql strict;


CREATE OR REPLACE FUNCTION cyanaudit.fn_get_partitions_over_age_limit
(
    in_age  interval
)
returns setof text as
 $_$
    with tt_partitions as
    (
        select c.relname::text as considered_partition_name,
               lead(c.relname) over( order by c.relname ) as next_partition_name
          from pg_class c
          join pg_namespace n
            on c.relnamespace = n.oid
         where n.nspname = 'cyanaudit'
           and c.relname like 'tb_audit_event_%'
    )
    select considered_partition_name
      from tt_partitions
     where next_partition_name < 'tb_audit_event_' || to_char( now() - in_age, 'YYYYMMDD_HH24MI' );
 $_$
    language sql strict;

--------------------
------ VIEWS -------
--------------------

-- vw_audit_log
-- This is the main user interface to the cyanaudit log.
CREATE OR REPLACE VIEW cyanaudit.vw_audit_log as
   select ae.recorded,
          ae.uid,
          cyanaudit.fn_get_email_by_uid(ae.uid) as user_email,
          ae.txid,
          att.label as description,
          (case when af.table_schema = any(current_schemas(true))
               then af.table_name
               else af.table_schema || '.' || af.table_name
          end)::varchar as table_name,
          af.column_name,
          ae.pk_vals::text[] as pk_vals,
          ae.row_op as op,
          ae.old_value,
          ae.new_value
     from cyanaudit.tb_audit_event ae
     join cyanaudit.tb_audit_field af using(audit_field)
left join cyanaudit.tb_audit_transaction_type att using(audit_transaction_type)
 order by ae.recorded desc, af.table_name, af.column_name;

COMMENT ON VIEW cyanaudit.vw_audit_log
    IS 'User-friendly view with which to inspect the Cyan Audit logs.';


-- vw_undo_statement
CREATE OR REPLACE VIEW cyanaudit.vw_undo_statement AS
   select ae.txid,
          (case ae.row_op
           when 'D' then
                format( 'INSERT INTO %I.%I ( %s ) values ( %s );',
                        af.table_schema,
                        af.table_name,
                        string_agg( quote_ident( af.column_name ), ',' ),
                        string_agg( quote_nullable( ae.old_value ), ',' )
                      )
          when 'U' then
                format( 'UPDATE %I.%I SET %s WHERE %s;',
                        af.table_schema,
                        af.table_name,
                        string_agg( format( '%I = %L', af.column_name, ae.old_value ), ',' ),
                        cyanaudit.fn_get_where_string(
                            cyanaudit.fn_get_table_pk_cols( af.table_name, af.table_schema ),
                            ae.pk_vals
                        )
                      )
          when 'I' then
                format( 'DELETE FROM %I.%I WHERE %s;',
                        af.table_schema,
                        af.table_name,
                        cyanaudit.fn_get_where_string(
                            cyanaudit.fn_get_table_pk_cols( af.table_name, af.table_schema ),
                            ae.pk_vals
                        )
                      )
          end)::varchar as query
     from cyanaudit.tb_audit_event ae
     join cyanaudit.tb_audit_field af using(audit_field)
 group by af.table_schema, af.table_name, ae.row_op,
          ae.pk_vals, ae.recorded, ae.txid
 order by ae.recorded desc;

COMMENT ON VIEW cyanaudit.vw_undo_statement
    IS 'Reconstructed SQL statements that can be used to play a transaction''s DML in reverse.';


---------------------
--- CONFIG TABLES ---
---------------------

INSERT INTO cyanaudit.tb_config (name, value)
VALUES ('user_table', null),
       ('user_table_username_col', null),
       ('user_table_email_col', null),
       ('user_table_uid_col', null),
       ('archive_tablespace', 'pg_default')
ON CONFLICT DO NOTHING;


INSERT INTO cyanaudit.tb_config (name, value)
     VALUES ('version', '2.2.0')
ON CONFLICT (name) DO UPDATE
        SET value = EXCLUDED.value
      WHERE cyanaudit.tb_config.name = EXCLUDED.name;

-------------------
--- PERMISSIONS ---
-------------------

grant  usage
       on schema cyanaudit                      to public;

grant  usage
       on all sequences in schema cyanaudit     to public;

grant  insert, select
       on cyanaudit.tb_audit_transaction_type   to public;

grant  insert,
       select (audit_transaction_type, txid),
       update (audit_transaction_type)
       on cyanaudit.tb_audit_event              to public;

grant  select
       on cyanaudit.tb_config                   to public;

SELECT cyanaudit.fn_create_event_trigger();

COMMIT;
