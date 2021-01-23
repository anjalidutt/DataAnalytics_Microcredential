--1. Join the film to the film_actor table.
SELECT *
FROM film_actor
INNER JOIN film ON film.film_id=film_actor.film_id
--2. Join the actor table to the film_actor table. 
SELECT *
FROM film_actor
INNER JOIN actor ON actor.actor_id=film_actor.actor_id

--3. Try to join the actor, film_actor, and film table together (3 joins!)
SELECT *
FROM actor
INNER JOIN (SELECT *
            FROM film_actor
			INNER JOIN actor ON actor.actor_id=film_actor.actor_id)film_new
ON film_new.film_id = film.film_id
