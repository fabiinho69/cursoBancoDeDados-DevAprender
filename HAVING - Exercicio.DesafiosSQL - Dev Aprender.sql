-- HAVING: O HAVING � basicamente muito usado em jun��o com o GROUP BY para filtrar resultados de um agrupamento (De uma forma mais simples eu gosto de entender ele como um WHERE para dados agrupados). 

/** 1-)EXEMPLO DE USO HAVING: Vamos dizer que queremos saber quais nomes no sistema tem uma ocorrencia maior que 10 vezes **/

SELECT TOP 10 *
FROM Person.Person

SELECT FirstName, COUNT(FirstName) AS 'Quantidade'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10 

/** 2-)EXEMPLO DE USO HAVING: Queremos saber quais produtos que no total de vendas est�o entre 162k a 500k? **/

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT ProductID, SUM(LineTotal) AS 'TOTAL'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000 

/** 3-)EXEMPLO DE USO HAVING: Quero saber quais nomes no sistema tem uma ocorrencia maior que 10 vezes, porem somente onde o t�tulo � 'Mr'. **/

SELECT TOP 10 *
FROM Person.Person

SELECT FirstName, COUNT(FirstName) AS 'Quantidade', Title
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName,  Title
HAVING COUNT(FirstName) > 10

--/ DESAFIO HAVING 
	--/ 1-) Estamos querendo indentificar as provincias(stateProviceId) com o maior numero de cadastros no nosso sistema, ent�o � preciso encontrar quais provincias(stateProvinceId) est�o registradas no banco de dados mais que 1000 vezes.

SELECT StateProvinceID, COUNT(StateProvinceID) AS 'Quantidade'
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

	--/ 2-) Sendo que se trata de uma multinacional os gerentes querem saber quais produtos(productId) n�o est�o em m�dia no minimo 1 milh�o em total de vendas(lineTotal).

SELECT *
FROM Sales.SalesOrderDetail


SELECT ProductID, AVG(LineTotal) AS 'M�diaVendas'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000




