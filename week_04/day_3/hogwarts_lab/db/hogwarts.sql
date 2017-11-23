DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;


CREATE TABLE houses (
  id serial4 primary key,
  name VARCHAR(255),
  logo VARCHAR(255)
);

CREATE TABLE students (
  id serial4 primary key,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house_id INT REFERENCES houses(id) ON DELETE CASCADE,
  age INT
);
