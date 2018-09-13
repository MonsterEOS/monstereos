CREATE SCHEMA IF NOT EXISTS "${schema^}";

CREATE TABLE "${schema^}"._index_state (
  id serial PRIMARY KEY,
  block_number integer NOT NULL,
  block_hash text NOT NULL,
  is_replay boolean NOT NULL
);

CREATE TABLE IF NOT EXISTS "${schema^}"._block_number_txid (
  block_number integer PRIMARY KEY,
  txid bigint NOT NULL
);

CREATE TABLE IF NOT EXISTS "${schema^}"._block_failures (
  block_number integer PRIMARY KEY,
  block_timestamp TIMESTAMP NOT NULL,
  _created_at TIMESTAMP DEFAULT current_timestamp NOT NULL
);
