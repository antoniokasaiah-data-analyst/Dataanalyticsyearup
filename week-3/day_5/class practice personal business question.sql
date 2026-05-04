
-- What is the sum total of payments from customers in the year 2005, in the month of the june.
-- Round to the nearest decimal point 
-- Rename column output to Total payments 

USE SAKILA;

SELECT ROUND(SUM(amount),1) AS total_payments
FROM payment
WHERE payment_date BETWEEN '2005-06-01' AND '2005-06-30' ;


