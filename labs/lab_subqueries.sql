#Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.
select count(store_id) from inventory
where film_id=(select film_id from film where title='Hunchback Impossible');

##List all films whose length is longer than the average length of all the films in the Sakila database.
select title, length from film
where length > (select avg(length) from film) order by length desc;

###Use a subquery to display all actors who appear in the film "Alone Trip".
select first_name, last_name from actor 
left join film_actor as fa 
on actor.actor_id=fa.actor_id
where film_id=(select film_id from film where title='Alone Trip');