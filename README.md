# Vehicle Rental Management System (SQL Project)

## Overview
This project implements a **Vehicle Rental Management System** using PostgreSQL.  
It demonstrates core relational database concepts such as table design, constraints,
relationships, and advanced SQL queries.

The system manages:
- Users (Admins and Customers)
- Vehicles (Cars, Bikes, Trucks)
- Bookings (Vehicle rental records)

The project is designed to showcase **practical SQL skills**, including filtering,
aggregation, subqueries, and relational joins.

---

## Database Schema

### Users Table
Stores user information and roles.

- `id` (UUID, Primary Key)
- `user_name`
- `user_email`
- `password`
- `phone_number`
- `user_role` (`Admin`, `Customer`)

---

### Vehicles Table
Stores vehicle information and availability.

- `id` (UUID, Primary Key)
- `vehicle_name`
- `vehicle_type` (`car`, `bike`, `truck`)
- `vehicle_model`
- `registration_number` (Unique)
- `rental_price`
- `availability_status` (`available`, `rented`, `maintenance`)

---

### Booking Table
Stores vehicle booking history.

- `id` (UUID, Primary Key)
- `user_id` (Foreign Key → users)
- `vehicle_id` (Foreign Key → vehicles)
- `rent_start_date`
- `rent_end_date`
- `booking_status` (`pending`, `confirmed`, `completed`, `cancelled`)
- `total_cost`

---

## Project Files

- `schema.sql` → Database table creation scripts
- `insert.sql` → Dummy data insertion
- `queries.sql` → SQL problem-solving queries
- `README.md` → Project documentation

---

## Concepts Covered
- Primary & Foreign Keys
- CHECK constraints
- SELECT & WHERE
- EXISTS / NOT EXISTS
- GROUP BY & HAVING
- COUNT & aggregation
- Relational joins

---

## How to Run
1. Create the database in PostgreSQL.
2. Run `schema.sql`
3. Run `insert.sql`
4. Execute queries from `queries.sql`

---

## Author
**Md Abu Syeed Abdullah**  
Vehicle Rental SQL Project


