DROP TABLE IF EXISTS space_program;
DROP TABLE IF EXISTS mission;
DROP TABLE IF EXISTS space_craft;
DROP TABLE IF EXISTS nation;
DROP TABLE IF EXISTS space_traveler;

CREATE TABLE space_program (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  budget INTEGER NOT NULL,
  director VARCHAR(50) NOT NULL,
  founded_on DATE DEFAULT current_date
);

CREATE TABLE mission (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  start_date DATE DEFAULT current_date,
  end_date DATE DEFAULT current_date,
  space_program_id INTEGER REFERENCES space_program(id),
  space_craft_id INTEGER REFERENCES space_craft(id),
  piloted_by_id INTEGER REFERENCES space_traveler(id),
);

CREATE TABLE space_craft (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  type VARCHAR(50) NOT NULL,
  capacity INTEGER NOT NULL
);

CREATE TABLE nation (
  id SERIAL PRIMARY KEY,
  country_code VARCHAR(3) NOT NULL,
  name INTEGER NOT NULL,
  head_of_state VARCHAR(50) NOT NULL
);

CREATE TABLE space_traveler (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  role VARCHAR(50) NOT NULL,
  born_on DATE DEFAULT current_date,
  gender VARCHAR(50) NOT NULL,
  nation_id INTEGER REFERENCES nation(id)
);
