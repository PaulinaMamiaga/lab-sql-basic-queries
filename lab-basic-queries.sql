
-- LAB | SQL Basic Queries
-- Database: Sakila
-- —----------------------------------------------

--  1. Display all available tables --------------
-- ----------------------------------------------
SHOW TABLES;

-- 2. Retrieve all data from actor, film and customer --------
-- ---------------------------------------------------------------
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve specific columns ---------
-- --------------------------------------------
--  3.1 Titles of all films --------------

SELECT title
FROM film;

-- 3.2 Languages used in films (alias as language) ----------

SELECT name AS language
FROM language;

-- 3.3 First names of all employees -----------------

SELECT first_name
FROM staff;

-- 4. Unique release years -----------
-- -----------------------------------
SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

-- 5. Counting records ----------------
-- -----------------------------------
-- 5.1 Number of stores ----------------

SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Number of employees -------------
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 Films available for rent and films rented ----
SELECT COUNT(*) AS films_available_for_rent
FROM inventory;

SELECT COUNT(*) AS films_rented
FROM rental;

-- 5.4 Distinct actor last names -------------------------------
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6. Ten longest films -------------------------
-- --------------------------------------------------
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Filtering -----------------------------
-- ---------------------------------------------
-- 7.1 Actors with first name 'SCARLETT' ----------------
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS -------------------------------------------------
-- 7.2 Movies with ARMAGEDDON in title and length > 100 --
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 Films with Behind the Scenes content -------------
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';


