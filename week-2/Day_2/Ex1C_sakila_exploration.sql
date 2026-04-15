/*
a)actor_id,first_name,last_name,last_update
b)`film_id`,`title`,`description`,`release_year`,`language_id`,`original_language_id`,
`rental_duration`,`rental_rate`,`length`,`replacement_cost`,`rating`,`special_features`,`last_update`
c) actor_info,actor,film,film_actor,film_category,film_text,inventory
d) 'customer_id','inventory_id','last_update','rental_date','rental_id','return_date','staff_id'
e)film_id,inventory_id,last_update,store_id
f) All the tables needed to understand the names of the films and the dates they were rented are actor_info,actor,film,film_actor,film_category,film_text,inventory.
   They are related through Primary Keys and Foreign Keys. Some examples are Columns like field_id and 
   last_updated
   */
   
SELECT * FROM film_actor;

SELECT * FROM RENTAL;

SELECT * FROM inventory;

SELECT * FROM FILM_CATEGORY;

SELECT * FROM FILM_ACTOR;
    
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME IN('actor_id','film_id')
GROUP BY table_name;

SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME LIKE '%FILM%' OR 
COLUMN_NAME LIKE '%NAME%'
GROUP BY TABLE_NAME; 

