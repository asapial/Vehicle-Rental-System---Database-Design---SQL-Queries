-- Query 1: JOIN
-- Retrieve booking information along with:

-- Customer name
-- Vehicle name
-- Concepts used: INNER JOIN

select booking.id as "booking_id",user_name as "customer_name", vehicle_name as "vehicle_name",rent_start_date,rent_end_date,booking_status from booking join users on booking.user_id=users.id join vehicles on booking.vehicle_id=vehicles.id



-- Query 2: EXISTS
-- Find all vehicles that have never been booked.

-- Concepts used: NOT EXISTS

select * from vehicles where not exists (select 1 from booking where booking.vehicle_id=vehicles.id)

-- Query 3: WHERE
-- Retrieve all available vehicles of a specific type (e.g. cars).

-- Concepts used: SELECT, WHERE

select * from vehicles where vehicle_type='car' and availability_status='available'

-- Query 4: GROUP BY and HAVING
-- Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.

-- Concepts used: GROUP BY, HAVING, COUNT
select vehicles.vehicle_name, count(vehicle_id) from booking join vehicles on booking.vehicle_id=vehicles.id group by vehicles.id,vehicles.vehicle_name having count(vehicle_id)>2
