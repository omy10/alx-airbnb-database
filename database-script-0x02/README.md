Airbnb Database Sample Data
     Overview
This repository contains SQL scripts for creating and populating an Airbnb-style relational database. The sample data reflects realistic scenarios including multiple users, properties, bookings, payments, reviews, and messages.

     File Structure
pgsql
Copy
Edit
.
├── schema.sql         # SQL CREATE TABLE statements (database structure)
├── sample_data.sql    # SQL INSERT statements (sample data for testing)
├── README.md          # This file
     Sample Data
The sample_data.sql script includes:

Users: Three users with different roles (guest, host, admin)

Properties: Two listings by the host

Bookings: Two bookings made by the guest

Payments: Associated payments for each booking

Reviews: Feedback for both properties

Messages: Communication between guest and host

     Purpose
To test database functionality (constraints, foreign keys)

To simulate real-world usage scenarios

To serve as seed data during development

    How to Use
Run the schema script first:

bash
Copy
Edit
psql -U your_username -d airbnb_clone -f schema.sql
Then run the sample data script:

bash
Copy
Edit
psql -U your_username -d airbnb_clone -f sample_data.sql
Replace your_username and airbnb_clone with your actual PostgreSQL username and database name.

     Notes
All UUIDs are placeholders; use real UUIDs or enable auto-generation.

Adjust payment_method, status, and role according to the defined ENUMs.

Date and pricing data are for illustration only.