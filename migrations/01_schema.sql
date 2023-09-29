DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL, -- PK
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY NOT NULL, -- PK
  owner_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE, -- FK
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  thumbnail_photo_url VARCHAR(255),
  cover_photo_url VARCHAR(255),
  cost_per_night INTEGER NOT NULL,
  parking_spaces INTEGER NOT NULL, 
  number_of_bathrooms INTEGER NOT NULL, 
  number_of_bedrooms INTEGER NOT NULL, 
  country VARCHAR(255) NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  province VARCHAR(255) NOT NULL,
  post_code VARCHAR(255) NOT NULL,
  active BOOLEAN NOT NULL
);

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY NOT NULL, -- PK
  start_date DATE NOT NULL, 
  end_date DATE NOT NULL, 
  property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE, -- FK
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE -- FK
);

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY NOT NULL, -- PK
  guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE, -- FK
  property_id INTEGER NOT NULL REFERENCES properties(id) ON DELETE CASCADE, -- FK
  reservation_id INTEGER NOT NULL REFERENCES reservations(id) ON DELETE CASCADE, -- FK
  rating SMALLINT NOT NULL DEFAULT 0, 
  message TEXT
);