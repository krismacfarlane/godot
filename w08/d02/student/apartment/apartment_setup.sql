DROP TABLE IF EXISTS buildings CASCADE;

CREATE TABLE buildings (
  id INTEGER UNIQUE NOT NULL,
  name VARCHAR NOT NULL,
  address VARCHAR NOT NULL,
  num_floors INTEGER NOT NULL
);

DROP TABLE IF EXISTS doormen CASCADE;

CREATE TABLE doormen (
  id INTEGER UNIQUE NOT NULL,
  name VARCHAR NOT NULL,
  experience INTEGER NOT NULL,
  shift VARCHAR(5) NOT NULL,
  building_id INTEGER REFERENCES buildings(id)
);

DROP TABLE IF EXISTS apartments CASCADE;

CREATE TABLE apartments (
  id INTEGER UNIQUE NOT NULL,
  floor INTEGER NOT NULL,
  name VARCHAR(3) NOT NULL,
  price INTEGER NOT NULL,
  sqft INTEGER NOT NULL,
  bedrooms INTEGER NOT NULL,
  bathrooms INTEGER NOT NULL,
  building_id INTEGER REFERENCES buildings(id)
);

DROP TABLE IF EXISTS tenants CASCADE;

CREATE TABLE tenants (
  id INTEGER UNIQUE NOT NULL,
  name VARCHAR NOT NULL,
  age INTEGER NOT NULL,
  gender VARCHAR(6) NOT NULL,
  apartment_id INTEGER REFERENCES apartments(id)
);

-- Retrieve all info on all tenants
SELECT * FROM tenants;

-- Retrieve the name, age, and gender of all tenants
SELECT name,age,gender FROM tenants;

-- Retrieve all info on all tenants older than 65
SELECT * FROM tenants WHERE age > 65;

-- Retrieve all info on all tenants in apartment with id 20
SELECT * FROM tenants WHERE apartment_id = 20;

-- Retrieve all info on all tenants in apartment with ids 20 or 21
SELECT * FROM tenants WHERE apartment_id = 20 OR apartment_id = 21;

-- Delete all tenants whose age is greater than 65
DELETE FROM tenants WHERE age > 65;

-- Change all doormen from building 3 to work night shifts.
UPDATE doormen SET shift = 'night' WHERE building_id = 3;

-- Create one new tenant, put them in any apartment you want
INSERT INTO tenants (id,name,age,gender,apartment_id) VALUES (5372,'Andrea MacFarlane',25,'Female',3);

-- Find just the ids for all apartments for building with 2
SELECT id FROM apartments WHERE building_id = 2;

-- Find all info for apartments in building number 3 whose price is greater than $2300
SELECT * FROM apartments WHERE building_id = 3 AND price > 2300;

-- Geriatric Birthday! Update all tenants whose age is 90 to be 91
UPDATE tenants SET age = 91 WHERE age = 90;

-- Change all tenants ages to increase by 1
UPDATE tenants SET age = age + 1;

-- Find all tenants who live in an apartment that costs more than $2300
SELECT tenants.*,apartments.* FROM tenants INNER JOIN apartments ON tenants.apartment_id = apartments.id WHERE price > 2300;

-- Demonstrate joining doormen with buildings
SELECT doormen.*,buildings.* FROM doormen INNER JOIN buildings ON doormen.building_id = buildings.id;

-- Demonstrate joining buildings with apartments
SELECT apartments.*,buildings.* FROM apartments INNER JOIN buildings on apartments.building_id = buildings.id WHERE building_id = 3;

-- Demonstrate joining apartments with tenants
SELECT tenants.*,apartments.* FROM tenants INNER JOIN apartments ON tenants.apartment_id = apartments.id;

