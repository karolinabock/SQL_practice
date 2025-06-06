WITH cte_per_customer
AS
(select rental.customer_id,
count(rental.rental_id) as rental_count_pcustomer,
sum(amount) as sum_amou_pcustomer 
from rental
join payment
ON payment.rental_id = rental.rental_id
group by rental.customer_id),

avg_rental AS
(SELECT AVG(rental_count_pcustomer) as avg_rental_s
from cte_per_customer),

big_clients AS
(SELECT customer_id, rental_count_pcustomer
from cte_per_customer
where rental_count_pcustomer > (SELECT avg_rental_s from avg_rental))

SELECT big_clients.customer_id, rental_count_pcustomer, film.film_id, title
from big_clients
JOIN rental
ON rental.customer_id = big_clients.customer_id
JOIN inventory
ON inventory.inventory_id = rental.inventory_id
JOIN film
ON film.film_id = inventory.film_id
