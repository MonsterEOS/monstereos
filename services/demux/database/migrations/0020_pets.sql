CREATE TABLE IF NOT EXISTS "${schema^}"."global_config" (
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
INSERT INTO "${schema^}"."global_config" (id, max_health, hunger_to_zero, min_hunger_interval, max_hunger_points, hunger_hp_modifier, min_awake_interval, min_sleep_period) VALUES (1, 100, 36000, 10800, 100, 1, 28800, 14400);

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
  "death_at" TIMESTAMP DEFAULT '1970-01-01T00:00:00' NOT NULL,
  "destroyed_at" TIMESTAMP DEFAULT '1970-01-01T00:00:00' NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "${schema^}"."pet_actions" (
  "id" SERIAL PRIMARY KEY,
  "pet_id" INTEGER NOT NULL REFERENCES "${schema^}"."pets",
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