USE sakila
-- Select all the actors with the first name ‘Scarlett’

SELECT first_name from sakila.actor
WHERE first_name = 'Scarlett';

-- How many films (movies) are available for rent and how many films have been rented?

SELECT * FROM rental



-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.

SELECT * from sakila.film;
SELECT * from length
SELECT MIN(length) as Minimum FROM film;
SELECT MAX(length) as Minimum FROM film;


-- What's the average movie duration expressed in format (hours, minutes)?
SELECT * from sakila.film;
SELECT AVG(length)/60 as average_time FROM sakila.film;

-- How many distinct (different) actors' last names are there?
SELECT * from sakila.actor;
SELECT * from actor;
SELECT COUNT(DISTINCT last_name) FROM actor;

-- Since how many days has the company been operating (check DATEDIFF() function)?
SELECT * from sakila.payment;
SELECT DATEDIFF('2006-02-15','2005-05-25');

-- Show rental info with additional columns month and weekday. Get 20 results.

SELECT * FROM sakila.rental;
SELECT *, month(rental_date), weekday(rental_date) as weekday FROM rental
LIMIT 20;

-- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.

SELECT * FROM sakila.rental;



-- Get release years.

SELECT film_id, title, release_year FROM sakila.film

-- Get all films with ARMAGEDDON in the title.

SELECT title from sakila.film
WHERE title LIKE '%ARMAGEDDON%';

-- Get all films which title ends with APOLLO.

SELECT title from sakila.film
WHERE title LIKE '%APOLLO';


-- Get 10 the longest films

SELECT title,length FROM sakila.film
ORDER BY length DESC 
limit 10;


-- How many films include Behind the Scenes content?

SELECT COUNT(film_id) AS "n_movies_behindthescenes" FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%'; 

