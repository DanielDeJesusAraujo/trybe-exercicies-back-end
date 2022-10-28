SELECT * FROM northwind.customers;

SELECT
	IF(first_name = 'anna',
	'nome bonito, bom dia anna!',
	'bom dia!'),
	first_name
FROM
	northwind.customers;

SELECT
	IF(first_name IN ('anna', 'andre'), 'nome bonito, bom dia anna!', 'bom dia!'),
	first_name
FROM
	northwind.customers;
	

SELECT * FROM northwind.orders;

SELECT
	ship_name,
	IF (order_date
	BETWEEN cast('2006-05-09 00:00:00' AS DATETIME) AND cast('2006-05-24 00:00:00' AS DATETIME),
	'fora do prazo de validade',
	'dentro do prazo de validade')
FROM
	northwind.orders;

SELECT
 ship_name ,
CASE 
	WHEN shipper_id = 3 THEN 'trabalha no loja de id 3'
	ELSE 'não trabalha na loja'
END AS 'test'
FROM northwind.orders;

SELECT 10 DIV 3; -- 3
SELECT 10 DIV 2; -- 5
SELECT 14 DIV 3; -- 4
SELECT 13 DIV 2; -- 6

SELECT 10 MOD 3; -- 1
SELECT 10 MOD 2; -- 0
SELECT 14 MOD 3; -- 2
SELECT 13 MOD 2; -- 1
SELECT 10.5 MOD 2; -- 0.5, ou seja, 2 + 2 + 2 + 2 + 2 = 10, restando 0.5

SELECT IF (15 MOD 2 <> 0, 'é impar', 'é par');

SELECT 18 MOD 12;
	
-- Podemos omitir ou especificar quantas casas decimais queremos
SELECT ROUND(10.4925); -- 10
SELECT ROUND(10.5136); -- 11
SELECT ROUND(-10.5136); -- -11
SELECT ROUND(10.4925, 2); -- 10.49
SELECT ROUND(10.4925, 3); -- 10.493

SELECT CEIL(10.51); -- 11
SELECT CEIL(10.49); -- 11
SELECT CEIL(10.2); -- 11

SELECT FLOOR(10.51); -- 10
SELECT FLOOR(10.49); -- 10
SELECT FLOOR(10.2); -- 10

SELECT POW(2, 2); -- 4
SELECT POW(2, 4); -- 16

SELECT SQRT(9); -- 3
SELECT SQRT(16); -- 4

-- Para gerar um valor aleatório entre 0 e 1:
SELECT RAND();

-- Para gerar um valor entre 7 e 13:
SELECT ROUND(7 + (RAND() * 6));
-- O cálculo que é feito é o seguinte: (7 + (0.0 a 1.0 * 6))

-- 30, ou seja, a primeira data é 30 dias depois da segunda
SELECT DATEDIFF('2020-01-31', '2020-01-01');

-- -30, ou seja, a primeira data é 30 dias antes da segunda
SELECT DATEDIFF('2020-01-01', '2020-01-31');

-- -01:00:00, ou seja, há 1 hora de diferença entre os horários
SELECT TIMEDIFF('08:30:10', '09:30:10');

-- -239:00:00, ou seja, há uma diferença de 239 horas entre as datas
SELECT TIMEDIFF('2021-08-11 08:30:10', '2021-08-01 09:30:10');



SELECT COUNT(*) AS ocorencias, ship_name FROM northwind.orders 
GROUP BY ship_name;

SELECT *FROM northwind.orders;
UPDATE northwind.orders
SET notes =  ROUND(RAND() * 100, 2);

SELECT ROUND(AVG(notes), 2) from northwind.orders;

SELECT MIN(notes) from northwind.orders;

SELECT MAX(notes) from northwind.orders;

SELECT SUM(notes) from northwind.orders;

SELECT ship_name, notes, COUNT(1) AS total 
FROM northwind.orders
GROUP BY ship_name, notes;
	
	
	
	
	
	