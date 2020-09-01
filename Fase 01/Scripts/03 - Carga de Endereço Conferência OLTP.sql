/* Escolhendo um Banco de Dados */
USE
	COMERCIO_OLTP
GO


/* Contando o Total de Dados da Tabela Cliente */
SELECT
	COUNT(*)
FROM
	CLIENTE
GO


/* Contando o Total de Dados da Tabela Endereco */
SELECT
	COUNT(*)
FROM
	ENDERECO
GO


/* Verificando se os mesmos dados na tabela cliente bate com a tabela endereco */
SELECT
	C.NOME,
	E.RUA
FROM
	CLIENTE C
INNER JOIN
	ENDERECO E
ON
	C.IDCLIENTE = E.ID_CLIENTE
GO


/* Verificando a quantidade de registros das tabelas */
SELECT
	COUNT(*) AS QUANTIDADE
FROM
	CLIENTE C
INNER JOIN
	ENDERECO E
ON
	C.IDCLIENTE = E.ID_CLIENTE
GO