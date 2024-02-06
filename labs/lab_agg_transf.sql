select title, length as max_duration from film order by length desc limit 1;
select title, length as min_duration from film order by length asc limit 1;

SELECT 
    CONCAT(
        FLOOR(AVG(length) / 60), 
        ' hours ', 
        ROUND(AVG(length) % 60), 
        ' minutes'
    ) AS average_duration 
FROM film;


SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) AS days_operating
FROM rental;

SELECT *,
    MONTH(rental_date) AS rental_month,
    DAYNAME(rental_date) AS rental_weekday
FROM rental
LIMIT 20;

SELECT title AS film_title,
    IFNULL(rental_duration, 'Not Available') AS rental_duration
FROM film
ORDER BY title ASC;

SELECT COUNT(*) AS total_films_released
FROM film;

SELECT rating, COUNT(*) AS num_films
FROM film
GROUP BY rating;

SELECT rating, COUNT(*) AS num_films
FROM film
GROUP BY rating
ORDER BY num_films DESC;

SELECT rating, ROUND(AVG(length), 2) AS mean_duration 
FROM film
GROUP BY rating
ORDER BY mean_duration DESC;

SELECT rating, ROUND(AVG(length), 2) AS mean_duration
FROM film
GROUP BY rating
HAVING mean_duration > 120;












