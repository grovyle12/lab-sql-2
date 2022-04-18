-- Select all the actors with the first name ‘Scarlett’.
select *
from  sakila.actor
where first_name = 'Scarlett'

-- Select all the actors with the last name ‘Johansson’
select*
from sakila.actor
where last_name = 'Johansson'
    
-- How many films (movies) are available for rent? HMMMMMMMMM
select count(*)
from sakila.film

select count(*)
from sakila.rental

-- How many films have been rented? I think this is it, i just added the amount of rental ID's
select count(rental_id)
from sakila.rental

-- What is the shortest and longest rental period? Didn't do this
select max(rental_duration), min(rental_duration)
from sakila.film

-- What's the average movie duration?
select avg(length)
from sakila.film

-- What's the average movie duration expressed in format (hours, minutes)?
select floor(avg(length)/60) as hours, avg(length)%60 as minutes
from sakila.film

-- How many movies longer than 3 hours?
select count(length)
from sakila.film
where length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(lower(first_name), ' ', upper(last_name), ' - ', lower(email))
from sakila.customer; 

select left(first_name,1), 
from sakila.customer;

select concat(left(first_name,1), lower(right(first_name,length(first_name)-1)), ' ',last_name, ' - ', lower(email))
 from sakila.customer;

Himanshu
left('Himanshu',1) ------H
right('Himanshu',7) ------imashu



-- What's the length of the longest film title? 

select title, length
from sakila.film
order by length desc
LIMIT 1
----------------------------

---Homework
select title, floor(length%60) as hours
from sakila.film
order by length desc
LIMIT 1

----------------------------
select max(length(title))
from sakila.film

