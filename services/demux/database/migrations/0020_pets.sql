CREATE TABLE IF NOT EXISTS "${schema^}".pets (
  id serial PRIMARY KEY,
  "pet_name" text NOT NULL,
  "owner" text NOT NULL,
  "_created_at" timestamp DEFAULT current_timestamp NOT NULL
);
