-- Select all the actors with the first name ‘Scarlett’.
use sakila;
select * from actor
where first_name="Scarlett";

-- Select all the actors with the last name Johansson
select * from actor
where last_name ="Johansson";

-- How many films (movies) are available for rent? 
select * from inventory;
select count(inventory_id) from inventory;

-- How many films have been rented
select * from rental;
select count(rental_date) from rental;

-- What is the shortest and longest rental period?
select * from film;
select rental_duration from film;
select max(rental_duration) from film;
select min(rental_duration) from film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select * from film;
select length from film;
select  max(length)as max_duration,min(length) as min_duration from film;
select min(length) from film;

-- What's the average movie duration?
select AVG(length) from film;

-- What's the average movie duration expressed in format (hours, minutes)?
select convert(date_add('2000-01-01', interval 115 minute), time);

-- How many movies longer than 3 hours?
select count(*), max(length) from sakila.film ;


-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select * from staff;
-- select *, concat('$', amount, ' ', k_symbol) as 'concat' from bank.order;
select *, concat (first_name,' ',last_name,' - ',lower(email)) as 'Formatted Email' from customer;

-- What's the length of the longest film title?
select * from film;
select *, length(title) as 'Name_length' from sakila.film;
select  max(length(title)) from film;
