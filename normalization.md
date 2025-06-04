# Database Normalization: Airbnb Database Design

## Objective
To apply normalization principles to ensure the Airbnb database schema adheres to the Third Normal Form (3NF), thus minimizing redundancy and ensuring data integrity.

---

## 1. First Normal Form (1NF)

### Rule:
- All attributes must contain only **atomic (indivisible) values**.
- Each record must be **unique**.

### Evaluation:
- All tables use atomic data types (`VARCHAR`, `DECIMAL`, `TIMESTAMP`, etc.).
- There are no repeating groups or arrays.
- Each table has a **primary key** ensuring uniqueness.

✅ **The database schema satisfies 1NF.**

---

## 2. Second Normal Form (2NF)

### Rule:
- Must meet 1NF.
- **No partial dependencies**: all non-key attributes must depend on the **whole primary key**.

### Evaluation:
- All tables with composite keys (none here) would be reviewed for partial dependencies.
- Each non-key column depends entirely on the single-column primary key of its table.

✅ **The database schema satisfies 2NF.**

---

## 3. Third Normal Form (3NF)

### Rule:
- Must meet 2NF.
- **No transitive dependencies**: non-key attributes must not depend on other non-key attributes.

### Evaluation:
We examine each table:

---

### 🔹 User Table
- All fields depend only on `user_id`.
- No transitive dependencies.

✅ In 3NF.

---

### 🔹 Property Table
- `host_id` is a foreign key referencing `User(user_id)`.
- All other attributes (`name`, `description`, `location`, `pricepernight`) are directly dependent on `property_id`.

✅ In 3NF.

---

### 🔹 Booking Table
- All fields (`start_date`, `end_date`, `status`, `total_price`) depend on `booking_id`.
- Foreign keys (`property_id`, `user_id`) are valid references; no derived or redundant data.

✅ In 3NF.

---

### 🔹 Payment Table
- All fields depend directly on `payment_id`.
- `amount` and `payment_method` relate to the booking only through `booking_id`.

✅ In 3NF.

---

### 🔹 Review Table
- `rating` and `comment` depend only on `review_id`.
- The table has no transitive dependencies.

✅ In 3NF.

---

### 🔹 Message Table
- `sender_id`, `recipient_id`, and `message_body` are all directly dependent on `message_id`.

✅ In 3NF.

---

## 🧹 Additional Notes and Justification

- ENUMs (like `status`, `role`, `payment_method`) are used for domain constraints, not for storing text redundantly.
- No derived columns (like `duration` or `average rating`) are stored, thus avoiding redundancy.
- No need to split any tables, as all have clear dependencies on primary keys with no transitives.

---

## ✅ Conclusion

All tables in the current Airbnb database schema comply with **Third Normal Form (3NF)**. The design is normalized, clean, and avoids redundancy or inconsistency risks.

