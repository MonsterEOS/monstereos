REVOKE ALL ON SCHEMA "${schema^}" FROM PUBLIC;

CREATE ROLE "${schema^}__visitor" WITH NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT NOLOGIN NOREPLICATION NOBYPASSRLS;
GRANT USAGE ON SCHEMA "${schema^}" TO "${schema^}__visitor";

CREATE ROLE "${schema^}__authenticated_user" WITH NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT NOLOGIN NOREPLICATION NOBYPASSRLS;
GRANT USAGE ON SCHEMA "${schema^}" TO "${schema^}__authenticated_user";

CREATE ROLE "${schema^}__internal_service" WITH NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN NOREPLICATION BYPASSRLS ENCRYPTED PASSWORD $pg1$service$pg1$;
GRANT USAGE ON SCHEMA "${schema^}" TO "${schema^}__internal_service";

GRANT CONNECT ON DATABASE "${database^}" TO "${schema^}__internal_service";

ALTER DEFAULT PRIVILEGES IN SCHEMA "${schema^}"
GRANT SELECT ON TABLES TO "${schema^}__internal_service";

CREATE ROLE "${schema^}__postgraphile" WITH NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN NOREPLICATION NOBYPASSRLS ENCRYPTED PASSWORD $pg1$postgraphile$pg1$;
GRANT USAGE ON SCHEMA "${schema^}" TO "${schema^}__postgraphile";

GRANT CONNECT ON DATABASE "${database^}" TO "${schema^}__postgraphile";

CREATE ROLE "${schema^}__propagator" WITH NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN NOREPLICATION BYPASSRLS ENCRYPTED PASSWORD $pg1$propagator$pg1$;
GRANT USAGE ON SCHEMA "${schema^}" TO "${schema^}__propagator";

GRANT CONNECT ON DATABASE "${database^}" TO "${schema^}__propagator";

ALTER DEFAULT PRIVILEGES IN SCHEMA "${schema^}"
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO "${schema^}__propagator";

GRANT "${schema^}__visitor" to "${schema^}__postgraphile";

GRANT "${schema^}__authenticated_user" to "${schema^}__postgraphile";

GRANT "${schema^}__internal_service" to "${schema^}__postgraphile";


CREATE EXTENSION IF NOT EXISTS "uuid-ossp" SCHEMA public;

CREATE TABLE "${schema^}"._chain_state (
  "_id" uuid DEFAULT public.uuid_generate_v4(),
  "_created_at" timestamp DEFAULT current_timestamp NOT NULL,
  "chain_id" text NOT NULL,
  "last_processed_block" bigint NOT NULL,
  "last_processed_block_hash" text NOT NULL,
  "last_irreversible_block" bigint NOT NULL,
  "is_replay" boolean DEFAULT FALSE,
  "block_hash_history" jsonb,
  CONSTRAINT "_chain_state_pkey" PRIMARY KEY ("_id", "is_replay")
);

CREATE FUNCTION "set_created_at_block"()
  RETURNS trigger
  AS $pg1$begin
      if NEW._created_at_block is null then
         NEW._created_at_block := NEW._modified_at_block;
      end if;
      return new;
    end;$pg1$
  VOLATILE
  LANGUAGE plpgsql
  PARALLEL UNSAFE;
CREATE FUNCTION "current_account_name"()
  RETURNS text
  AS $pg1$select nullif(current_setting('jwt.claims.publicAccount', true), '')::text;$pg1$
  STABLE
  LANGUAGE sql
  PARALLEL UNSAFE;
CREATE FUNCTION "current_identity_id"()
  RETURNS numeric
  AS $pg1$select nullif(current_setting('jwt.claims.publicIdentity', true), '')::numeric;$pg1$
  STABLE
  LANGUAGE sql
  PARALLEL UNSAFE;
