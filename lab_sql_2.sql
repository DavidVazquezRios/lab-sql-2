USE sakila;
-- 1-Select all the actors with the first name ‘Scarlett’.
SELECT 
    *
FROM
    ACTOR
WHERE
    FIRST_NAME = 'SCARLETT';
    
-- 2-Select all the actors with the last name ‘Johansson’.    
SELECT 
    *
FROM
    ACTOR
WHERE
    LAST_NAME = 'JOHANSSON';
    
-- 3-How many films (movies) are available for rent?
SELECT 
    count(distinct(film_id))
FROM
    FILM;

-- 4-How many films have been rented?
SELECT 
    count(rental_id)
FROM
    RENTAL;
    
--  5-What is the shortest and longest rental period?  

SELECT 
    MIN(RENTAL_DURATION) AS MIN_DURATION, MAX(RENTAL_DURATION) AS MAX_DURATION
FROM
    FILM;

-- 6-What are the shortest and longest movie duration? Name the values max_duration and min_duration.

SELECT 
    MIN(LENGTH) AS MIN_DURATION, MAX(LENGTH) AS MAX_DURATION
FROM
    FILM;
-- 7-What's the average movie duration?
SELECT 
    AVG(LENGTH) AS AVERAGE_DURATION
FROM
    FILM;
    
-- 8-What's the average movie duration expressed in format (hours, minutes)?
SELECT 
    CONCAT(FLOOR(AVG(LENGTH)/60),'h ',MOD(AVG(LENGTH),60),'m') AS average_movie_duration
FROM
    FILM;
    
-- 9-How many movies longer than 3 hours?

SELECT 
    COUNT(FILM_ID)
FROM
    FILM
WHERE
    LENGTH > 180;

-- 10- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT 
    LOWER(EMAIL)
FROM
    CUSTOMER;
    
 -- 11-What's the length of the longest film title?

SELECT 
    MAX(LENGTH(TITLE)) as longest_film_title_length
FROM
    FILM;

