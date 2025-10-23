-- seed.sql
-- Sample data for AirBnB Clone Database
-- Compatible with both PostgreSQL and MySQL

-- Insert sample users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('11111111-1111-1111-1111-111111111111', 'Kofi', 'Owusu', 'kofi@example.com', 'hashedpass1', '233501234567', 'host', CURRENT_TIMESTAMP),
    ('22222222-2222-2222-2222-222222222222', 'Ama', 'Mensah', 'ama@example.com', 'hashedpass2', '233541234567', 'guest', CURRENT_TIMESTAMP),
    ('33333333-3333-3333-3333-333333333333', 'Yaw', 'Adjei', 'yaw@example.com', 'hashedpass3', NULL, 'guest', CURRENT_TIMESTAMP);

-- Insert sample properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at)
VALUES
    ('aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'Ocean View Apartment', 'A cozy apartment by the sea', 'Accra', 350.00, CURRENT_TIMESTAMP),
    ('bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '11111111-1111-1111-1111-111111111111', 'Mountain Cabin', 'Quiet cabin near the hills', 'Aburi', 200.00, CURRENT_TIMESTAMP);

-- Insert sample bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    ('cccc3333-cccc-cccc-cccc-cccccccccccc', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', '2025-11-01', '2025-11-05', 1400.00, 'confirmed', CURRENT_TIMESTAMP),
    ('dddd4444-dddd-dddd-dddd-dddddddddddd', 'bbbb2222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '33333333-3333-3333-3333-333333333333', '2025-12-10', '2025-12-15', 1000.00, 'pending', CURRENT_TIMESTAMP);

-- Insert sample payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method, payment_date)
VALUES
    ('eeee5555-eeee-eeee-eeee-eeeeeeeeeeee', 'cccc3333-cccc-cccc-cccc-cccccccccccc', 1400.00, 'paypal', CURRENT_TIMESTAMP);

-- Insert sample reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    ('ffff6666-ffff-ffff-ffff-ffffffffffff', 'aaaa1111-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 5, 'Amazing experience! Very clean and peaceful.', CURRENT_TIMESTAMP);

-- Insert sample messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('gggg7777-gggg-gggg-gggg-gggggggggggg', 
     '22222222-2222-2222-2222-222222222222',
     '11111111-1111-1111-1111-111111111111',
     'Hello, I’d like to book your apartment for next week.',
     CURRENT_TIMESTAMP);
