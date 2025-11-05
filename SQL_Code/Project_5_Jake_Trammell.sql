-- Use Sakila Database
USE sakila;
-- SQL script: Create and explain the query for getting the information below in MySQL.
-- List ALL the actors' last name AS Actor, and their films id AS MovieID
-- (tips: all the necessary information/coulumns are in actor and film_actor table, some actors may don’t act in any movie)
EXPLAIN SELECT a.last_name AS Actor, fa.film_id AS MovieID
FROM actor a
LEFT JOIN film_actor fa
ON a.actor_id = fa.actor_id
ORDER BY a.last_name, fa.film_id;

-- SQL script: Create and explain the query for getting the information below
-- List ALL the films' title AS Movie and the id of the actors in the films AS ActorID
-- (tips: all the necessary information/coulumns are in film and film_actor table, some movies may don’t have any actor, such as cartoon)
EXPLAIN SELECT f.title as Movie, fa.actor_id as ActorID
FROM film f
LEFT JOIN film_actor fa
ON f.film_id = fa.film_id
ORDER BY f.title, fa.actor_id;

-- SQL script: Create and explain the query for getting the information below
-- List the films' id, title, rating, rental duration, and order the results by film id,
-- If the films' rental duration GREATER than the average in it rating category.
-- (tips: all the necessary information/coulumns are in film table)
-- (tips: use the first statement to create an outter query. use the second statement to create a subquery)
EXPLAIN SELECT f. film_id, f.title, f.rating, f.rental_duration
FROM film f
WHERE f.rental_duration > (
	SELECT AVG(f2.rental_duration)
    FROM film f2
    WHERE f2.rating = f.rating)
ORDER BY f.film_id;