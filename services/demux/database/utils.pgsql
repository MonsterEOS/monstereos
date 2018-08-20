INSERT INTO "pets"."_index_state" (id, block_number, block_hash, is_replay) VALUES (0, 99, '', false);
SELECT * FROM "pets"."_index_state" LIMIT 1000;
SELECT * FROM "pets"."elements" LIMIT 1000;
SELECT * FROM "pets"."types" LIMIT 1000;
SELECT * FROM "pets"."pets" LIMIT 1000;

-- DELETE FROM "pets"."_index_state";
-- SELECT last_value FROM "pets".elements_id_seq;
-- SELECT c.relname FROM pg_class c WHERE c.relkind = 'S';

DELETE FROM "pets"."types";
ALTER SEQUENCE "pets".types_id_seq MINVALUE 0;
ALTER SEQUENCE "pets".types_id_seq RESTART WITH 0;

DELETE FROM "pets"."elements";
ALTER SEQUENCE "pets".elements_id_seq MINVALUE 0;
ALTER SEQUENCE "pets".elements_id_seq RESTART WITH 0;

DELETE FROM "pets"."pets";
ALTER SEQUENCE "pets".pets_id_seq RESTART WITH 1;

DROP TABLE "pets"."elements";
DROP TABLE "pets"."types";
DROP TABLE "pets"."pets";
DROP TABLE "pets"."pet_actions";

DROP SCHEMA "pets" CASCADE;

CREATE SCHEMA IF NOT EXISTS "pets";

CREATE TABLE IF NOT EXISTS "pets"."_index_state" (
  id INTEGER PRIMARY KEY,
  block_number integer NOT NULL,
  block_hash text NOT NULL,
  is_replay boolean NOT NULL
);

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
  "death_at" TIMESTAMP,
  "destroyed_at" TIMESTAMP,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "pets"."pet_actions" (
  "id" SERIAL PRIMARY KEY,
  "pet_id" INTEGER NOT NULL,
  "action" TEXT NOT NULL,
  "is_invalid" BOOLEAN NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);
