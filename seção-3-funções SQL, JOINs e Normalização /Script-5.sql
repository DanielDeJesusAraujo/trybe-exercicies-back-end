-- 1 - Exiba apenas os nomes dos produtos na tabela products.
SELECT product_name FROM northwind.products;

-- 2 - Exiba os dados de todas as colunas da tabela products.
SELECT * FROM products; 

-- 3 - Escreva uma query que exiba os valores da coluna que representa a primary key da tabela products.
describe northwind.products;
SELECT id FROM northwind.products;

-- 4 - Conte quantos registros existem na coluna product_name da tabela products.
SELECT COUNT(product_name) from northwind.products;

-- 5 - Monte uma query que exiba os dados da tabela products a partir do quarto registro até o décimo terceiro.
SELECT * FROM northwind.products limit 9 offset 4;

-- 6 - Exiba os dados das colunas product_name e id da tabela products de maneira que os resultados estejam em ordem alfabética dos nomes.
SELECT product_name, id FROM  northwind.products order by product_name;

-- 7 - Mostre apenas os ids dos 5 últimos registros da tabela products (a ordernação deve ser baseada na coluna id).
SELECT id FROM northwind.products ORDER BY id DESC LIMIT 5;

-- 8 - Faça uma consulta que retorne três colunas, respectivamente, com os nomes 'A', 'Trybe' e 'eh', e com valores referentes a soma de '5 + 6', a string 'de', a soma de '2 + 8'.
SELECT 5 + 6 AS 'A', 'de' AS 'Trybe', 2 + 8 AS 'eh';

-- 9 - Mostre todos os valores de notes da tabela purchase_orders que não são nulos.
SELECT notes FROM northwind.purchase_orders WHERE notes IS NOT NULL; 

-- 10 - Mostre todos os dados da tabela purchase_orders em ordem decrescente, ordenados por created_by em que o created_by é maior ou igual a 3.
SELECT * FROM northwind.purchase_orders  WHERE created_by >= 3 ORDER BY created_by DESC;

-- 11 - Exiba os dados da coluna notes da tabela purchase_orders em que seu valor de Purchase generated based on Order é maior ou igual a 30 e menor ou igual a 39.
SELECT notes FROM northwind.purchase_orders
WHERE notes BETWEEN 'Purchase generated based on Order #30' 
AND 'Purchase generated based on Order #39';

-- 12 - Mostre as submitted_date de purchase_orders em que a submitted_date é do dia 26 de abril de 2006.
SELECT submitted_date FROM northwind.purchase_orders WHERE submitted_date BETWEEN CAST('');







