/* Criteria 1: Create relational  DB of your choice with minimum 5 tables */

-- Create the Clan Adventure  database
-- Create tables destinations, users, trips, activities, expenses
-- Set Primary and Foreign Key constraints to create relations between the tables

-- Create Database and USE it
CREATE DATABASE IF NOT EXISTS clan_adventures;
USE clan_adventures;

-- Create the Tables trips, destination, families ,activities, expenses*/
-- Create the families table

CREATE TABLE families (
    family_id INT AUTO_INCREMENT PRIMARY KEY,
    family_name VARCHAR(255),
    num_members INT,
    email VARCHAR(255)
);
-- Create the Activities table
CREATE TABLE activities (
    activity_id INT AUTO_INCREMENT PRIMARY KEY,
    trip_id INT,
    activity_type VARCHAR(255),
    description TEXT
);

-- create destinations table
CREATE TABLE destinations (
    destination_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(255),
    country VARCHAR(255),
    description TEXT,
    activity_id INT,
    FOREIGN KEY (activity_id) REFERENCES activities(activity_id)
);

-- Create the Trips table
CREATE TABLE trips (
    trip_id INT AUTO_INCREMENT PRIMARY KEY,
    trip_name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    destination_id INT,
    family_id INT,
    FOREIGN KEY (destination_id) REFERENCES destinations(destination_id),
    FOREIGN KEY (family_id) REFERENCES families(family_id)
)AUTO_INCREMENT = 100;

-- Create the expenses table
CREATE TABLE expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    trip_id INT,
    total_expenses DECIMAL(10, 2),
    FOREIGN KEY (trip_id) REFERENCES trips(trip_id)
); 





