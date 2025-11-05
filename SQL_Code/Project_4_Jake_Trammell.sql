-- Use Sakila Database
USE sakila;
-- Count the actors whose last name ending with 'on'
-- (tips: all the necessary information/coulumns are in actor table)

SELECT Count(*)
From actor
WHERE last_name LIKE '%on';
-- List the actors' last name AS Actor, and their films id AS MovieID
-- (tips: all the necessary information/coulumns are in actor and film_actor table)

SELECT a.last_name AS Actor, fa.film_id AS MovieID
FROM actor AS a
INNER JOIN film_actor AS fa
	ON fa.actor_id = a.actor_id;
-- List the films' title AS Movie and the id of the actors in the films AS ActorID
-- (tips: all the necessary information/coulumns are in film and film_actor table)

SELECT f.title AS Movie, fa.actor_id AS ActorID
FROM film AS f
INNER JOIN film_actor as fa
	ON fa.film_id = f.film_id;

-- List the films' title AS Movie, and their actors' last name and first name together AS Actor
-- The result should be ordered by actors' last name.
-- (tips: all the necessary information/coulumns are in actor, film, and film_actor table)
-- (tips: Actor column format should be 'last_name, first_name'. Note that there is a space after comma. For example: AKROYD, KIRSTEN)
SELECT f.title AS Movie, CONCAT(a.last_name, ', ', a.first_name) AS Actor
FROM actor AS a
INNER JOIN film_actor AS fa
	ON fa.actor_id = a.actor_id
INNER JOIN film AS f
	ON f.film_id = fa.film_id
ORDER BY a.last_name;

-- List the films' id, title, rating, and rental duration, if the films' rental duration below the average of that film's rating category, and order the results by film id.
-- (tips: all the necessary information/coulumns are in film table)
-- (tips: use the first part of the statement to create an outter query. use the second statement (i.e., if clause) to create a subquery)
SELECT f.film_id, f.title, f.rating, f.rental_duration
FROM film AS f
WHERE f.rental_duration < (
	SELECT AVG(rental_duration)
    FROM film
    WHERE rating = f.rating
    )
ORDER BY f.film_id;