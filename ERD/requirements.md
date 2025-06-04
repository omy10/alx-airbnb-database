Entities and Their Attributes
1. User
PK: user_id (UUID)

first_name (VARCHAR)

last_name (VARCHAR)

email (VARCHAR, UNIQUE, Indexed)

password_hash (VARCHAR)

phone_number (VARCHAR, NULL)

role (ENUM: guest, host, admin)

created_at (TIMESTAMP)

2. Property
PK: property_id (UUID)

FK: host_id → User(user_id)

name (VARCHAR)

description (TEXT)

location (VARCHAR)

pricepernight (DECIMAL)

created_at (TIMESTAMP)

updated_at (TIMESTAMP)

3. Booking
PK: booking_id (UUID)

FK: property_id → Property(property_id)

FK: user_id → User(user_id)

start_date (DATE)

end_date (DATE)

total_price (DECIMAL)

status (ENUM: pending, confirmed, canceled)

created_at (TIMESTAMP)

4. Payment
PK: payment_id (UUID)

FK: booking_id → Booking(booking_id)

amount (DECIMAL)

payment_date (TIMESTAMP)

payment_method (ENUM: credit_card, paypal, stripe)

5. Review
PK: review_id (UUID)

FK: property_id → Property(property_id)

FK: user_id → User(user_id)

rating (INTEGER, 1–5)

comment (TEXT)

created_at (TIMESTAMP)

6. Message
PK: message_id (UUID)

Relationship	Type
User ↔ Property	1 : N (One user [host] can have many properties)
User ↔ Booking	1 : N (One user can make many bookings)
Property ↔ Booking	1 : N (One property can be booked many times)
Booking ↔ Payment	1 : 1 (Each booking has one payment)
User ↔ Review	1 : N (One user can leave many reviews)
Property ↔ Review	1 : N (One property can have many reviews)
User ↔ Message	1 : N (One user can send and receive many messages)
FK: sender_id → User(user_id)

FK: recipient_id → User(user_id)

message_body (TEXT)

sent_at (TIMESTAMP)
