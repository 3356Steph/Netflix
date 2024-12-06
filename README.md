# Netflix Database Project

This repository contains SQL files related to the **Netflix Database** project. The project aims to manage data about Netflix movies, shows, categories, cast members, directors, and ratings.

## Project Structure
- **schemas/**: Contains SQL queries to create and manage database tables.
- **queries/**: Includes SQL queries to analyze and fetch data from the database.
- **data/**: Contains SQL scripts for inserting initial data into the database.
- **migrations/**: Holds SQL scripts for modifying the database schema (e.g., altering tables, updating records).

## Files in this repository

### 1. `create_tables.sql`
This script sets up the tables for the Netflix database (e.g., `netflix_titles`, `categories`, `cast`, `directors`, etc.).

### 2. `movie_statistics.sql`
This query calculates statistics about movies in the database, such as the most popular categories, actors, and directors.

### 3. `insert_data.sql`
This script inserts sample data into the database for testing and development purposes.

### 4. `update_ratings.sql`
A migration script to update or modify ratings in the `rating` table.

## How to Run
1. Set up a MySQL database.
2. Execute the SQL scripts in the order mentioned above.
3. Modify the queries and data inserts to fit your specific requirements.

## License
This project is licensed under the MIT License.
