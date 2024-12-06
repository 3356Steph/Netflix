# Netflix Database Project

The Netflix Database Project simulates a movie streaming platform's database, organizing data on movies, TV shows, cast members, directors, categories, ratings, and countries. It allows users to query and analyze content statistics, such as popular genres and top actors. This project is ideal for learning about database design, SQL queries, and data analysis for media platforms.

## Technologies Used

The project is implemented entirely with **SQL**, using **MySQL** (or another relational database management system) to manage and query the database. The scripts provided in the repository are designed to:
- **Create** the database schema
- **Populate** the database with sample data
- **Analyze** the database using various SQL queries

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



