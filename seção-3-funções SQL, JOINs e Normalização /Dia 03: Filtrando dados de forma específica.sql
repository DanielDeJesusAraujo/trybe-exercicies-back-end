use PecasFornecedores;

SELECT
	*
FROM
	Pecas
WHERE
	name LIKE 'gr%';

SELECT
	*
FROM
	Fornecimentos
WHERE
	peca = '2';

SELECT
	peca,
	preco,
	fornecedor
FROM
	Fornecimentos
WHERE
	Fornecedor LIKE '%N%';

SELECT
	*
FROM
	Fornecedores
WHERE
	name LIKE '%LTDA'
ORDER BY
	name DESC;

SELECT
	*
FROM
	Fornecedores
WHERE
	name LIKE '%F%';

SELECT
	*
from
	Fornecimentos
WHERE
	Preco BETWEEN 15 AND 40;

SELECT
	*
FROM
	Vendas
WHERE
	order_date BETWEEN cast('2018-04-15 00:00:00' AS DATETIME)
and cast('2019-07-30 23:59:59' AS DATETIME);












