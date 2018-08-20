CREATE TABLE IF NOT EXISTS "${schema^}"."elements" (
  "id" SERIAL PRIMARY KEY,
  "ratios" INTEGER[] NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "${schema^}"."types" (
  "id" SERIAL PRIMARY KEY,
  "elements" INTEGER[] NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "${schema^}"."pets" (
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

CREATE TABLE IF NOT EXISTS "${schema^}"."pet_actions" (
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

ALTER SEQUENCE "${schema^}".types_id_seq MINVALUE 0;
ALTER SEQUENCE "${schema^}".types_id_seq RESTART WITH 0;

ALTER SEQUENCE "${schema^}".elements_id_seq MINVALUE 0;
ALTER SEQUENCE "${schema^}".elements_id_seq RESTART WITH 0;