CREATE TABLE categories (
  id serial PRIMARY KEY,
  title VARCHAR(64) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);