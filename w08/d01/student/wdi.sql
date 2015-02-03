-- DROP TABLE IF EXISTS students;

-- CREATE TABLE students (
--   id SERIAL PRIMARY KEY, -- auto-incrementing non-null id number
--   name VARCHAR(50) NOT NULL, --creating a string that has a max character limit of 50
--   age INTEGER NOT NULL
-- );

-- INSERT INTO students (name, age) VALUES ('MacFarlane', 23);
-- SELECT * FROM students;

-- DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  species VARCHAR(50) NOT NULL,
  sex VARCHAR(6) NOT NULL,
  is_carnivore BOOLEAN NOT NULL
);

-- INSERT INTO animals (species, sex, is_carnivore) VALUES ('cat', 'female', T);
-- SELECT * FROM animals;

-- DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  title VARCHAR(50) NOT NULL,
  badge_number VARCHAR(10) UNIQUE
);

INSERT INTO employees (name, age, title, badge_number) VALUES ('Travis', 99, 'Instructor', 'fadsjfkl33');
INSERT INTO employees (name, age, title, badge_number) VALUES ('Phil', 98, 'Instructor', 'fkdlskf3');
INSERT INTO employees (name, age, title, badge_number) VALUES ('PJ', 97, 'Instructor', 'fdass93481');
INSERT INTO employees (name, age, title, badge_number) VALUES ('Britt', 23, 'Assistant', '123456789');

-- deletes the user where name is Britt
DELETE FROM employees WHERE name = 'Britt';

UPDATE employees SET name = 'Philco' WHERE name = 'Phil';
UPDATE employees SET name = 'Trizzle' WHERE name = 'Travis';
UPDATE employees SET name = 'Philliam' WHERE name = 'PJ';



