-- seed.sql
-- Sample data for AirBnB Clone Database

-- Insert sample users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
    (UUID(), 'Kofi', 'Owusu', 'kofi@example.com', 'hashedpass1', '233501234567', 'host'),
    (UUID(), 'Ama', 'Mensah', 'ama@example.com', 'hashedpass2', '233541234567', 'guest'),
    (UUID(), 'Yaw', 'Adjei', 'yaw@example.com', 'hashedpass3', NULL, 'guest');

-- Insert sample properties
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
    (UUID(), (SELECT user_id FROM users WHERE email = 'kofi@example.com'), 'Ocean View Apartment', 'A cozy apartment by the sea', 'Accra', 350.00),
    (UUID(), (SELECT user_id FROM users WHERE email = 'kofi@example.com'), 'Mountain Cabin', 'Quiet cabin near the hills', 'Aburi', 200.00);

-- Insert sample bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
    (UUID(), (SELECT property_id FROM properties WHERE name = 'Ocean View Apartment'), (SELECT user_id FROM users WHERE email = 'ama@example.com'), '2025-11-01', '2025-11-05', 1400.00, 'confirmed'),
    (UUID(), (SELECT property_id FROM properties WHERE name = 'Mountain Cabin'), (SELECT user_id FROM users WHERE email = 'yaw@example.com'), '2025-12-10', '2025-12-15', 1000.00, 'pending');

-- Insert sample payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
    (UUID(), (SELECT booking_id FROM bookings WHERE status = 'confirmed'), 1400.00, 'paypal');

-- Insert sample reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
    (UUID(), (SELECT property_id FROM properties WHERE name = 'Ocean View Apartment'), (SELECT user_id FROM users WHERE email = 'ama@example.com'), 5, 'Amazing experience! Very clean and peaceful.');

-- Insert sample messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
    (UUID(), 
     (SELECT user_id FROM users WHERE email = 'ama@example.com'),
     (SELECT user_id FROM users WHERE email = 'kofi@example.com'),
     'Hello, I’d like to book your apartment for next week.');
