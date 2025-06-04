Airbnb Database Schema
   Overview
This project defines a normalized relational database schema for an Airbnb-like application. The database includes core functionalities such as user management, property listings, bookings, payments, reviews, and messaging between users.

Entities and Tables
The following tables are implemented:

User – Stores user information including roles (guest, host, admin)

Property – Contains details of property listings by hosts

Booking – Tracks bookings made by guests for specific properties

Payment – Records payments for bookings

Review – Stores user reviews and ratings for properties

Message – Enables communication between users

 Normalization
The schema is designed to comply with Third Normal Form (3NF):

All attributes are atomic and non-repeating (1NF)

All non-key attributes are fully functionally dependent on the primary key (2NF)

There are no transitive dependencies (3NF)

Each table has clearly defined primary keys and foreign keys to eliminate redundancy and improve data integrity.

 Constraints and Indexes
Primary Keys: All tables have UUID-based primary keys for uniqueness and scalability.

Foreign Keys: Used to establish relationships between entities (e.g., host_id, user_id, booking_id).

UNIQUE constraint on user emails.

CHECK constraints ensure valid data ranges (e.g., review ratings).

ENUMs enforce valid roles, booking status, and payment methods.

Indexes are created on frequently queried fields like email, property_id, and booking_id.

 Technologies
SQL (MySQL or PostgreSQL)

UUIDs for unique identification

ENUMs for role and status definitions

