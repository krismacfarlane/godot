DROP TABLE IF EXISTS spells;

CREATE TABLE spells (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

INSERT INTO spells
  (name)
VALUES
  ('Accio'),
  ('Wingardium Leviosa'),
  ('Lumos'),
  ('Avada Kedavra');

-- How would you model the relationship between a student and a spell?
-- many-to-many

-- Can every student can use a spell?
-- yes

-- Can more than one person perform "Accio?"
-- yes

-- Can you write the code to have every Slytherin student know 'Avada Kevavra'?
-- ALTER TABLE students
-- ADD spells_id INTEGER REFERENCES spells
-- UPDATE students SET spells_id = 4 WHERE house_id = 4;

-- SELECT students.*, spells.*, houses.*
-- FROM students
-- INNER JOIN spells
-- ON students.spells_id = spells.id
-- INNER JOIN houses
-- ON students.house_id = houses.id;



