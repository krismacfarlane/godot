DROP TABLE IF EXISTS fridge;
DROP TABLE IF EXISTS food;
DROP TABLE IF EXISTS meal;

CREATE TABLE fridge (
  id SERIAL PRIMARY KEY,
  brand VARCHAR(50) NOT NULL,
  location VARCHAR(50) NOT NULL
);

CREATE TABLE food (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description VARCHAR(50) NOT NULL,
  bought_on DATE DEFAULT current_date,
  expiration DATE DEFAULT current_date,
  fridge_id INTEGER REFERENCES fridge(id),
  meal_id INTEGER REFERENCES meal(id)
);

CREATE TABLE meal (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  recipe VARCHAR(200) NOT NULL,
  ingredients VARCHAR(100) NOT NULL
);
