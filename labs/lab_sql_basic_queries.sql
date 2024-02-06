show tables
from sakila
;

select * from actor
;
select * from film;
select * from customer;

select title from film;
SELECT name AS language FROM language;
select first_name from staff;
select distinct(release_year) FROM film;
SELECT COUNT(*) AS num_stores FROM store;
SELECT COUNT(*) AS num_staff FROM staff;
SELECT COUNT(return_date) FROM rental;
SELECT COUNT(rental_date) FROM rental;
select count(distinct(last_name)) FROM actor;
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;
select *
from actor
WHERE first_name = "SCARLETT";
