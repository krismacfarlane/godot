DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS genres;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(50) NOT NULL,
  balance MONEY NOT NULL,
  born_on DATE NOT NULL
);

CREATE TABLE purchases (
  id SERIAL PRIMARY KEY,
  purchase_type VARCHAR(50) NOT NULL,
  amount INTEGER NOT NULL,
  user_id INTEGER REFERENCES users(id),
  movie_id INTEGER REFERENCES movies(id)
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  purchase_price MONEY NOT NULL,
  rental_price MONEY NOT NULL,
  available_on DATE DEFAULT current_date,
  description VARCHAR(200) NOT NULL,
  rating VARCHAR(2) NOT NULL,
  poster_image VARCHAR(200) NOT NULL,
  length INTEGER NOT NULL,
  genre_id INTEGER REFERENCES genres(id)
);

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
  movie_id INTEGER REFERENCES movies(id)
);
