--drop the table if it already exists
DROP TABLE IF EXISTS lightsabers;
DROP TABLE IF EXISTS jedi;

CREATE TABLE jedi (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
  id SERIAL PRIMARY KEY,
  hilt_metal VARCHAR(255),
  colour VARCHAR(255),
  owner INT REFERENCES jedi(id)
);

INSERT INTO lighsabers (colour, owner, hilt_metal)
  VALUES ('green', 1, 'palladium');

INSERT INTO lighsabers (colour, owner, hilt_metal)
  VALUES ('green', 3, 'gold');

SELECT * FROM lighsabers;

-- --add some jedi

INSERT INTO jedi (name, darkside, age)
  VALUES ('Luke', false, 21);

INSERT INTO jedi (name, darkside, age)
  VALUES ('Vader', true, 100);

INSERT INTO jedi (name, age)
  VALUES ('Obiwan', 33);


-- --updating
--
-- UPDATE jedi SET darkside = true
-- WHERE name = 'Luke' AND age = 33;
--
-- --deleting(the whole row)
-- DELETE FROM jedi
--   WHERE name = 'Luke'
-- --reading
 -- SELECT * FROM jedi;
