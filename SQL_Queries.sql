create database ola;
use ola;

#1. Retrieve all successful bookings: 
Create View Successful_Bookings As
SELECT * FROM bookings 
WHERE Booking_Status = 'Success';

Select * from  Successful_Bookings;

#2. Find the average ride distance for each vehicle types 
create view ride_distance_for_each_vehicle As
SELECT Vehicle_Type , AVG(Ride_Distance)
As avg_distance FROM bookings
group by vehicle_Type;

select * from ride_distance_for_each_vehicle;

#3. Get the total number of canceled rides by customers: 
create view canceled_rides_by_customers As
select count(*) from bookings 
where Booking_Status = "Canceled by Customer";

select * from canceled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides: 
create view top_5_customers As
select Customer_ID, count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides DESC LIMIT 5; 

select * from top_5_customers;

#5. Get the number of rides canceled by drivers due to personal and car-related issues: 
create view canceled_by_drivers_p_c_issues as
select count(*) from bookings 
where Canceled_Rides_by_Driver = 'Personal & car related issue';

select * from canceled_by_drivers_p_c_issues;

#6. Find the maximum and minimum driver rati£gs for Prime Sedan bookings: 
create view max_min_driver_rating as 
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from bookings where Vehicle_Type = 'Prime Sedan';

select * from max_min_driver_rating;

#7. Retrieve all rides where payment was made using UPI: 
create view UPI_payment As
select * from bookings
where Payment_Method = 'UPI'; 

select * from UPI_payment;

#8. Find the average customer rating per vehicle type: 
create view AVG_Cust_Rating As
select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
from bookings
group by Vehicle_Type;

select * from AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully: 
create view total_successful_Ride_value As
select sum(Booking_Value) as total_successful_Ride_value
from bookings
where Booking_Status = 'Success';

select * from total_successful_Ride_value;

#10. List all incomplete rides along with the reason:
create view Incomplete_Rides_Reason As
select Booking_ID, Incomplete_Rides_Reason from bookings where incomplete_Rides = 'Yes';

select * from Incomplete_Rides_Reason;





#1. Retrieve all successful bookings:
Select * from  Successful_Bookings;

#2. Find the average ride distance for each vehicle types 
select * from ride_distance_for_each_vehicle;

#3. Get the total number of canceled rides by customers: 
select * from canceled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides: 
select * from top_5_customers;

#5. Get the number of rides canceled by drivers due to personal and car-related issues: 
select * from canceled_by_drivers_p_c_issues;

#6. Find the maximum and minimum driver rati£gs for Prime Sedan bookings: 
select * from max_min_driver_rating;

#7. Retrieve all rides where payment was made using UPI: 
select * from UPI_payment;

#8. Find the average customer rating per vehicle type: 
select * from AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully: 
select * from total_successful_Ride_value;

#10. List all incomplete rides along with the reason:
select * from Incomplete_Rides_Reason;