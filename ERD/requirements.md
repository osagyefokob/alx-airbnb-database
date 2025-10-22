# ER Diagram Requirements

This document defines the entities and relationships for the **Airbnb Clone Database**.

## Entities
1. **User**
   - user_id (PK)
   - first_name
   - last_name
   - email
   - password_hash
   - phone_number
   - role
   - created_at

2. **Property**
   - property_id (PK)
   - host_id (FK → User)
   - name
   - description
   - location
   - price_per_night
   - created_at
   - updated_at

3. **Booking**
   - booking_id (PK)
   - property_id (FK → Property)
   - user_id (FK → User)
   - start_date
   - end_date
   - total_price
   - status
   - created_at

4. **Payment**
   - payment_id (PK)
   - booking_id (FK → Booking)
   - amount
   - payment_date
   - payment_method

5. **Review**
   - review_id (PK)
   - property_id (FK → Property)
   - user_id (FK → User)
   - rating
   - comment
   - created_at

6. **Message**
   - message_id (PK)
   - sender_id (FK → User)
   - recipient_id (FK → User)
   - message_body
   - sent_at

## Relationships
- A User can **own many Properties**
- A User can **make many Bookings**
- A Property can **have many Bookings**
- Each Booking has **one Payment**
- A User can **write many Reviews**
- A Property can **have many Reviews**
- Users can **send and receive many Messages**
