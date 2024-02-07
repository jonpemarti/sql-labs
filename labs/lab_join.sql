##List the number of films per category
SELECT c.name as category, count(fc.film_id) as num_films
from category c
join film_category fc
ON c.category_id=fc.category_id
GROUP BY c.name
ORDER BY num_films desc;

##Retrieve the store ID, city, and country for each store.
select store_id, city, country 
from store as st
left join address
on st.address_id=address.address_id
left join city
on st.address_id=city.city_id
left join country
on st.address_id=country.country_id
group by store_id;

##Calculate the total revenue generated by each store in dollars.
select  st.store_id, sum(amount) as tot_revenue
from store as st
left join staff as sf
on st.store_id=sf.staff_id
left join payment as pt
on sf.staff_id=pt.staff_id
group by store_id;

##Determine the average running time of films for each category.
select avg(length), c.name
from category as c
left join film_category as fc
on c.category_id=fc.category_id
left join film as f
on fc.film_id=f.film_id
group by name;