-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  ('uuid-guest-001', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '1234567890', 'guest'),
  ('uuid-host-001', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '0987654321', 'host'),
  ('uuid-admin-001', 'Clara', 'Admin', 'clara@example.com', 'hashed_pw3', NULL, 'admin');

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('uuid-prop-001', 'uuid-host-001', 'Ocean View Apartment', '2 bed, sea-facing apartment.', 'Miami, FL', 120.00),
  ('uuid-prop-002', 'uuid-host-001', 'City Center Loft', 'Modern loft in the heart of downtown.', 'New York, NY', 180.00);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('uuid-booking-001', 'uuid-prop-001', 'uuid-guest-001', '2025-07-01', '2025-07-05', 480.00, 'confirmed'),
  ('uuid-booking-002', 'uuid-prop-002', 'uuid-guest-001', '2025-08-10', '2025-08-12', 360.00, 'pending');

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('uuid-pay-001', 'uuid-booking-001', 480.00, 'credit_card'),
  ('uuid-pay-002', 'uuid-booking-002', 360.00, 'paypal');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('uuid-rev-001', 'uuid-prop-001', 'uuid-guest-001', 5, 'Amazing view and great host!'),
  ('uuid-rev-002', 'uuid-prop-002', 'uuid-guest-001', 4, 'Clean and convenient location.');

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('uuid-msg-001', 'uuid-guest-001', 'uuid-host-001', 'Hi Bob, is the apartment available in July?'),
  ('uuid-msg-002', 'uuid-host-001', 'uuid-guest-001', 'Hi Alice, yes it is! Feel free to book.');
