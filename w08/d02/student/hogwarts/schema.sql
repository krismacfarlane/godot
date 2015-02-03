-- DROP TABLE IF EXISTS houses;

-- CREATE TABLE houses (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(50) UNIQUE
-- );

-- -- these commands will change tables that already exist
-- -- ALTER TABLE students
-- -- RENAME COLUMN house_name
-- -- TO house_id;

-- -- ALTER TABLE students
-- -- ALTER COLUMN house_id TYPE integer;


-- DROP TABLE IF EXISTS students;

-- CREATE TABLE students (
--   id SERIAL PRIMARY KEY,
--   fname VARCHAR(50) NOT NULL,
--   lname VARCHAR(50) NOT NULL,
--   house_id INTEGER REFERENCES houses(id)
-- );

-- SELECT students.*, houses.*
-- FROM students
-- INNER JOIN houses
-- ON students.house_id = houses.id;

DROP TABLE IF EXISTS death_eater_memberships;

CREATE TABLE death_eater_memberships (
  id SERIAL PRIMARY KEY,
  joined_on TIMESTAMP NOT NULL,
  student_id INTEGER REFERENCES students(id)
);

SELECT death_eater_memberships.*, students.*
FROM death_eater_memberships
INNER JOIN students
ON death_eater_memberships.student_id = students.id;

SELECT death_eater_memberships.*, students.*
FROM death_eater_memberships
INNER JOIN students
ON death_eater_memberships.student_id = students.id AND students.house_id != 4;
