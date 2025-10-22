# Database Normalization - Airbnb Clone

## Objective
To ensure that the Airbnb database design follows the **Third Normal Form (3NF)** by eliminating redundancy and maintaining data integrity.

---

## Step 1: First Normal Form (1NF)
- Each table has a **primary key**.
- Each field holds **atomic (single) values**.
- No repeating groups or arrays.

✅ Our tables (User, Property, Booking, etc.) all follow 1NF.

---

## Step 2: Second Normal Form (2NF)
- All tables are already in 1NF.
- All non-key columns depend fully on the **whole primary key**.

✅ Example:  
In the `Booking` table, columns like `start_date`, `end_date`, and `status` depend entirely on `booking_id`, not partially.

---

## Step 3: Third Normal Form (3NF)
- All tables are in 2NF.
- No column depends on another non-key column.

✅ Example:  
In the `User` table, `email` and `phone_number` depend on `user_id`, not on each other.  
In the `Property` table, `location` and `price_per_night` depend on `property_id`.

---

## Conclusion
The Airbnb database design meets the requirements of **Third Normal Form (3NF)**.  
There is no redundant data, every attribute depends only on the primary key, and relationships are properly defined.
