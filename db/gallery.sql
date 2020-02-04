DROP TABLE exhibits;
DROP TABLE artists;

CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  info VARCHAR(255)
);

CREATE TABLE exhibits(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  artist_id INT REFERENCES artists(id) ON DELETE SET NULL,
  category VARCHAR(255),
  info VARCHAR(255)
);
