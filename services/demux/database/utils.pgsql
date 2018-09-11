DELETE FROM "pets"."_index_state";
INSERT INTO "pets"."_index_state" (id, block_number, block_hash, is_replay) VALUES (1, 1200000, '', false); -- bubble at 1293913
SELECT * FROM "pets"."_index_state" LIMIT 1000;
SELECT * FROM "pets"."elements" LIMIT 1000;
SELECT * FROM "pets"."types" LIMIT 1000;
SELECT * FROM "pets"."pets" ORDER BY id LIMIT 1000;
SELECT * FROM "pets"."pet_actions" LIMIT 1000;
SELECT * FROM "pets"."global_config" LIMIT 1000;
SELECT * FROM "pets"."battles" LIMIT 1000;
SELECT * FROM "pets"."battle_picks" LIMIT 1000;
SELECT * FROM "pets"."battle_turns" LIMIT 1000;

Wed Sep 05 2018 13:31:30 GMT-0400 (EDT)
2018-09-05T13:31:30
2018-09-06T13:31:30.500Z

SELECT cyanaudit.fn_update_audit_fields('pets')

SHOW search_path;
SET search_path TO pets;
select definition from pg_views where viewname = 'pets_graveyard'
select pg_get_viewdef(to_regclass('pets.pets_graveyard'));

update "pets"."pets" SET death_at = '1970-01-01T00:00:00'

update "pets"."_index_state" SET block_number = 907762, block_hash = '000dd9f285d36c03f6578f964b3f68c8492ee1bf435f50ba8c846293a2ee6c5d'

SELECT pet_id, MAX(created_at) as last_feed_at FROM pets.pet_actions
 WHERE action = 'feedpet' GROUP BY pet_id

-- -- DELETE FROM "pets"."_index_state";
-- -- SELECT last_value FROM "pets".elements_id_seq;
-- -- SELECT c.relname FROM pg_class c WHERE c.relkind = 'S';

-- DELETE FROM pets.pet_actions; --WHERE id >= 21;
DELETE FROM pets.pets WHERE id >= 15; -- WHERE id >= 12;

DROP SCHEMA "pets" CASCADE;

CREATE SCHEMA IF NOT EXISTS "pets";

DROP TABLE "pets"."_index_state";
CREATE TABLE IF NOT EXISTS "pets"."_index_state" (
  id SERIAL PRIMARY KEY,
  block_number integer NOT NULL,
  block_hash text NOT NULL,
  is_replay boolean NOT NULL
);

CREATE TABLE IF NOT EXISTS "pets"."global_config" (
  "id" SERIAL PRIMARY KEY,
  "max_health" INTEGER NOT NULL,
  "hunger_to_zero" INTEGER NOT NULL,
  "min_hunger_interval" INTEGER NOT NULL,
  "max_hunger_points" INTEGER NOT NULL,
  "hunger_hp_modifier" INTEGER NOT NULL,
  "min_awake_interval" INTEGER NOT NULL,
  "min_sleep_period" INTEGER NOT NULL,
  "_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);
INSERT INTO "pets"."global_config" (id, max_health, hunger_to_zero, min_hunger_interval, max_hunger_points, hunger_hp_modifier, min_awake_interval, min_sleep_period) VALUES (1, 100, 36000, 10800, 100, 1, 28800, 14400);

CREATE TABLE IF NOT EXISTS "pets"."elements" (
  "id" SERIAL PRIMARY KEY,
  "ratios" INTEGER[] NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "pets"."types" (
  "id" SERIAL PRIMARY KEY,
  "elements" INTEGER[] NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "pets"."pets" (
  "id" SERIAL PRIMARY KEY,
  "pet_name" TEXT NOT NULL,
  "type_id" INTEGER DEFAULT -1 NOT NULL,
  "owner" TEXT NOT NULL,
  "death_at" TIMESTAMP DEFAULT '1970-01-01T00:00:00' NOT NULL,
  "destroyed_at" TIMESTAMP DEFAULT '1970-01-01T00:00:00' NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "pets"."pet_actions" (
  "id" SERIAL PRIMARY KEY,
  "pet_id" INTEGER NOT NULL REFERENCES "pets"."pets",
  "action" TEXT NOT NULL,
  "is_invalid" BOOLEAN NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

DELETE FROM "pets"."types";
ALTER SEQUENCE "pets".types_id_seq MINVALUE 0;
ALTER SEQUENCE "pets".types_id_seq RESTART WITH 0;

DELETE FROM "pets"."elements";
ALTER SEQUENCE "pets".elements_id_seq MINVALUE 0;
ALTER SEQUENCE "pets".elements_id_seq RESTART WITH 0;


-- DELETE FROM "pets"."pets";
DELETE FROM "pets"."pet_actions" WHERE pet_id >= 15;
ALTER SEQUENCE "pets".pets_id_seq RESTART WITH 15;
ALTER SEQUENCE "pets".pet_actions_id_seq RESTART WITH 15;

DROP TABLE "pets"."battles" CASCADE
CREATE TABLE IF NOT EXISTS "pets"."battles" (
  "id" SERIAL PRIMARY KEY,
  "host" TEXT NOT NULL,
  "mode" INTEGER NOT NULL,
  "started_at" TIMESTAMP DEFAULT '1970-01-01T00:00:00' NOT NULL,
  "winner" TEXT NOT NULL DEFAULT '',
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "pets"."battle_picks" (
  "id" SERIAL PRIMARY KEY,
  "battle_id" INTEGER NOT NULL REFERENCES "pets"."battles",
  "pet_id" INTEGER NOT NULL REFERENCES "pets"."pets",
  "picker" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "pets"."battle_turns" (
  "id" SERIAL PRIMARY KEY,
  "battle_id" INTEGER NOT NULL REFERENCES "pets"."battles",
  "pet_id" INTEGER NOT NULL REFERENCES "pets"."pets",
  "element_id" INTEGER NOT NULL REFERENCES "pets"."elements",
  "enemy_pet_id" INTEGER NOT NULL REFERENCES "pets"."pets",
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE VIEW "pets".vranking_graveyard AS
  SELECT *
    FROM "pets".pets AS p
   WHERE (p.death_at >= '2018-01-01 00:00:00')
   ORDER BY id ASC;

CREATE VIEW "pets".vranking_active AS
  SELECT p.id, p.pet_name, p.owner, count(a.id) AS actions
    FROM "pets".pets AS p
   INNER JOIN "pets".pet_actions AS a
      ON a.pet_id = p.id
   GROUP BY p.id
   ORDER BY actions DESC;

CREATE VIEW "pets".vranking_collectors AS
  SELECT p.owner, count(distinct p.type_id) AS pets
    FROM "pets".pets AS p
   GROUP BY p.owner
   ORDER BY pets DESC;

CREATE VIEW "pets".vranking_battle_pets AS
  SELECT bp.pet_id, p.pet_name, p.type_id,
         count(bw.id) AS wins,
         count(bl.id) AS losses
    FROM "pets".battle_picks AS bp
   INNER JOIN "pets".pets AS p
      ON p.id = bp.pet_id
    LEFT JOIN "pets".battles AS bw
      ON bw.id = bp.battle_id
     AND bw.winner = bp.picker
    LEFT JOIN "pets".battles AS bl
      ON bl.id = bp.battle_id
     AND NOT bl.winner = bp.picker
     AND NOT bl.winner = ''
   GROUP BY bp.pet_id, p.pet_name, p.type_id
   ORDER BY wins DESC;