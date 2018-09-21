CREATE TABLE IF NOT EXISTS "${schema^}"."messages" (
  "id" SERIAL PRIMARY KEY,
  "pet_id" TEXT NOT NULL,
  "pet_name" TEXT NOT NULL,
  "pet_type_id" INTEGER DEFAULT -1 NOT NULL,
  "message" TEXT NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "created_block" BIGINT NOT NULL,
  "created_trx" TEXT NOT NULL,
  "created_eosacc" TEXT NOT NULL,
  "_dmx_created_at" TIMESTAMP DEFAULT current_timestamp NOT NULL
);
