select * from ola

--Q1. Retrieve all the successfull booking
select * from ola
where booking_status = 'Success';

--Q2. Find the avg ride distance for each vehicle type
select vehicle_type, ROUND(AVG(ride_distance),2) as avg_distance
from ola
group by vehicle_type;

--Q3. get the total number of canceled ride by customer
select COUNT(*) as canceled_ridef
from ola
where booking_status = 'Canceled by Customer';

--Q4. List the top 5 customer who book the highest number of rides
select customer_id, COUNT(booking_id) as total_ride from ola
group by customer_id
order by total_ride desc limit 5;

--Q5. get the number of rides canceled by the driver due to personal and car related issues
select COUNT(canceled_rides_by_driver) as canceled_ride_by_reason from ola
where canceled_rides_by_driver = 'Personal & Car related issue'

--Q6. find the max and min driver rating for prime Sedan bookings
select MAX(driver_ratings) as max, MIN(driver_ratings) as min
from ola
where vehicle_type = 'Prime Sedan'

--Q7. retrieve all rides where payment method in UPI
select * from ola
where payment_method = 'UPI';

--Q8. find the avg customer rating per vehicle type
select vehicle_type, AVG(customer_rating) as avgg from ola
group by vehicle_type;

--Q9. calculate the total booking value of rides completed successfully
select SUM(booking_value) from ola
where booking_status = 'Success';



