CREATE TABLE IF NOT EXISTS "${schema^}"."battles" (
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

CREATE TABLE IF NOT EXISTS "${schema^}"."battle_picks" (
  "id" SERIAL PRIMARY KEY,
  "battle_id" INTEGER NOT NULL REFERENCES "${schema^}"."battles",
  "pet_id" INTEGER NOT NULL REFERENCES "${schema^}"."pets",
  "picker" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

CREATE TABLE IF NOT EXISTS "${schema^}"."battle_turns" (
  "id" SERIAL PRIMARY KEY,
  "battle_id" INTEGER NOT NULL REFERENCES "${schema^}"."battles",
  "pet_id" INTEGER NOT NULL REFERENCES "${schema^}"."pets",
  "element_id" INTEGER NOT NULL REFERENCES "${schema^}"."elements",
  "enemy_pet_id" INTEGER NOT NULL REFERENCES "${schema^}"."pets",
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);

