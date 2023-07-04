CREATE TABLE products (
  id serial PRIMARY KEY,
  title VARCHAR(64) NOT NULL,
  description TEXT DEFAULT NULL,
  price int4 NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);