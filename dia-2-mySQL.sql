-- PRATICANDO USO DO SELECT
SELECT
	*
FROM
	city;

SELECT
	first_name,
	last_name
FROM
	customer;
-- LIMIT linmita as linnhas esibidas
SELECT
	*
FROM
	rental
LIMIT 10;

SELECT
	title,
	description,
	release_year
FROM
	film;
-- PRATICANDO O USO DO CONCAT
SELECT
	*
FROM
	sakila.actor;

SELECT
	CONCAT(first_name,
	last_name)
FROM
	sakila.actor;

SELECT
	CONCAT(first_name,
	' ',
	last_name)
FROM
	sakila.actor;

SELECT
	CONCAT(first_name,
	' ',
	last_name) AS 'Nome Completo'
FROM
	sakila.actor;

SELECT
	CONCAT(title,
	' - ',
	release_year) AS 'Lançamento do filme'
FROM
	sakila.film;

SELECT
	CONCAT(title,
	' -> ',
	rating) AS 'classificação'
FROM
	sakila.film;

SELECT
	CONCAT(address,
	' - ',
	district) AS 'Endereço'
FROM
	sakila.address;