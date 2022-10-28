-- DROP schema `sakila`;  deleta um db especifico.

SELECT * FROM staff;

use sakila;

INSERT
	INTO
	staff (staff_id,
	first_name,
	last_name,
	address_id,
	email,
	store_id,
	active,
	username,
	password,
	last_update)
values (4,
'xablau',
'trybe',
5,
'xablau@gmaile.com',
3,
2,
'xablau',
'jd233hj4hjk54kj5456546j3kl',
'2007-05-12 23:00:00'),
	   (5,
'daniel',
'araujo',
7,
'daniel@gmail.com',
4,
2,
'daniel',
'4j56kk798dy5r43h55',
'2020-05-26 05:58:45');

describe staff;

INSERT
	into
	staff (
	first_name,
	last_name,
	address_id,
	store_id,
	username,
	active)
select
	customer.first_name,
	customer.last_name,
	customer.address_id,
	customer.store_id,
	customer.first_name,
	customer.active
FROM customer limit 5;

INSERT
	into
	category (name)
values ('documentario');

describe category;

SELECT * FROM category;

SELECT * FROM store;

describe store;

SELECT * FROM staff;

INSERT INTO store (manager_staff_id, address_id) values (3, 3);

SET SQL_SAFE_UPDATES = 0;

INSERT INTO sakila.store (manager_staff_id, address_id)
VALUES (3, 3);

UPDATE staff 
SET first_name = 'daniel'
WHERE first_name LIKE '%li%';




