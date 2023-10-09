# LightBnB

A simple AirBnB clone with sample data to demonstrate database interaction using Javascript and SQL queries via Postgres.

## Purpose

This project was created and published by me as part of my learnings at Lighthouse Labs. Given pre-made design code, the project gave me experience with databases, SQL, and connecting them to the front end of a web application including:
- Practical usage of PostgreSQL
- Creating and using SQL queries to retrieve and create data 
- Allow users to view and search through database
- Data input sanitization to protect against SQL injection
- Practice with user registration

## Features

- User registration
- View and filter property listings
- Create property listings
- View user's properties & reservations

## Usage

**Clone the repository:**

`git clone git@github.com:kenkneelee/LightBnB.git`

**Install dependencies:**

`npm install`

**Start the web server:**

`npm run local`

**Visit the website:**

http://localhost:3000/

## Dependencies

- bcrypt: 3.0.6
- cookie-session: 1.3.3
- express: 4.17.1
- nodemon: 1.19.1
- pg: 8.11.3

## Entity Relationship Diagram (ERD):

![Entity relationship diagram showing relationships between users, properties, reservations, and property_reviews database tables](./docs/LighthouseBnB%20ERD.png)
