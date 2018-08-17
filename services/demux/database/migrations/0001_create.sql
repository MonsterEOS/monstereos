CREATE SCHEMA IF NOT EXISTS "${schema^}";

CREATE TABLE "${schema^}"._index_state (
  id serial PRIMARY KEY,
  block_number integer NOT NULL,
  block_hash text NOT NULL,
  is_replay boolean NOT NULL
);
