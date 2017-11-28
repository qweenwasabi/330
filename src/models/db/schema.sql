CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  joined_at TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE tips (
  id SERIAL PRIMARY KEY,
  author VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  content Text
);

CREATE TABLE reviews (
  id SERIAL PRIMARY KEY,
  author_id INT,
  trip_id INT,
  created_at TIMESTAMP DEFAULT current_timestamp,
  FOREIGN KEY (author_id) REFERENCES users(id),
  FOREIGN KEY (trip_id) REFERENCES tips(id)
);
