CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  price NUMERIC(10,2)
);
INSERT INTO products (name, price) VALUES ('Test', 9.99);
