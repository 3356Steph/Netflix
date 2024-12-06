# Netflix Database Project

This project contains SQL files designed to manage and analyze a Netflix-style database, encompassing movies, TV shows, categories, cast members, directors, ratings, and more. The database structure is intended for educational and analytical purposes, simulating a real-world Netflix database schema.

## Project Overview

The **Netflix Database** project provides a structured and scalable way to organize data related to Netflix movies and TV shows. It includes tables for:
- **Movies & TV Shows** (`netflix_titles`)
- **Cast Members** (`cast`)
- **Categories** (`category`)
- **Countries** (`countries`)
- **Directors** (`directors`)
- **Ratings** (`rating`)
- Relationship tables that link shows to cast, categories, countries, and directors.

By using this schema, users can easily retrieve and analyze information about Netflix's content, actors, directors, and ratings across various countries and categories.

## Project Structure

The project is organized into the following directories:

- **`schemas/`**: Contains SQL queries to create the database tables and structure.
- **`queries/`**: SQL queries to retrieve and analyze data from the database, such as movie statistics, popular actors, directors, and genres.
- **`data/`**: SQL scripts for inserting sample data into the database for testing and development purposes.
- **`migrations/`**: SQL scripts to modify the database schema, such as adding new tables, altering existing ones, or updating records.

## Key Files

### 1. `schemas/create_tables.sql`
This script defines the structure of the database, including the creation of tables for **movies**, **cast members**, **categories**, **directors**, and other related data.

### 2. `queries/movie_statistics.sql`
Contains SQL queries for analyzing the database, including fetching statistics like the most popular categories, actors, and directors in different countries.

### 3. `data/insert_data.sql`
Provides sample data inserts for populating the database tables. This data is used to test and demonstrate the functionality of the database schema.

### 4. `migrations/update_ratings.sql`
This script contains SQL migrations for altering or updating data, such as adding new ratings or modifying existing records in the database.

## How to Set Up

### 1. Install MySQL Database
Ensure that MySQL is installed and running on your local machine or on a cloud server.

### 2. Create Database
Once MySQL is installed, create a new database for the Netflix project:
```sql
CREATE DATABASE netflix;
USE netflix;

