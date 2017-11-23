DROP TABLE IF EXISTS visits;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS locations;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE locations (
  id SERIAL PRIMARY KEY,
  category VARCHAR(255),
  name VARCHAR(255)
);

CREATE TABLE visits (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  location_id INT REFERENCES locations(id),
  review TEXT
);
