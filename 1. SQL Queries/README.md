# Database Management System Project - README

## Overview

This project involves designing and developing SQL DDL (Data Definition Language) and DML (Data Manipulation Language) statements to demonstrate the use of various SQL objects such as Tables, Views, Indexes, Sequences, Synonyms, and different constraints. Additionally, it includes at least 10 SQL queries on a suitable database application.

## Steps and Explanations

### 1. Database Creation and Table Definitions

- Created a database named "SHRIHARSH."
- Defined tables: HOTEL, ROOM, BOOKING, and GUEST, showcasing various data types and constraints.
- Utilized the PRIMARY KEY constraint to uniquely identify records in the HOTEL and GUEST tables.
- Linked tables using foreign key relationships.

### 2. Data Population

- Populated the tables with sample data to simulate a hotel management system.
- Demonstrated the use of INSERT statements to add records to the tables.

### 3. Describing a Table

- Used the `DESC` statement to describe the structure of the HOTEL table.

### 4. Foreign Key Addition

- Added a foreign key constraint on the BOOKING table, linking the GUEST table.

### 5. Queries

#### Total Revenue from Double Rooms

- Calculated the total revenue per night from all double rooms.

#### Details of Occupied Rooms at Damodar Hotel

- Listed details of all rooms at the Damodar Hotel, including the name of the guest staying in the room if occupied.

#### Average Number of Bookings for Each Hotel in September

- Computed the average number of bookings for each hotel in September.

#### Index Creation and Query Performance

- Created an index on the HName field in the HOTEL table.
- Showcased the performance improvement in a query searching for the Damodar Hotel.

#### Full Details of All Hotels

- Listed full details of all hotels, including guest and booking information.

#### Full Details of All Hotels in Pune

- Listed full details of all hotels located in Pune.

#### Price Update for All Rooms

- Updated the price of all rooms by 5%.

#### Number of Rooms in Each Hotel in Mumbai

- Counted the number of rooms in each hotel located in Mumbai.

#### Filtered Rooms by Type and Price

- Listed all Double or Single Rooms with a price below Rs.1000 per night in ascending order of price.

## Conclusion

This project serves as a comprehensive demonstration of SQL DDL and DML statements, covering database creation, table definitions, data population, and complex queries. It provides a practical understanding of managing a hotel database system using SQL.
