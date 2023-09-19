-- GROUP BY 
SELECT *
FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID -- No caso estou puxando duas colunas e somando uma (Somando coluna do UnitPrice), coloquei uma apelido na coluna de "SOMA", e fiz o agrupamento de soma da coluna 

-- Quero saber quantos cada produto foi vendido até hoje
SELECT * FROM Sales.SalesOrderDetail

SELECT ProductID, COUNT(ProductID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quero saber quantos nomes de cada nome temos cadastrados em nosso banco de dados.
SELECT *
FROM Person.Person

SELECT FirstName, COUNT(FirstName) AS "Contagem" 
FROM Person.Person
GROUP BY FirstName

--Na tabela production.product quero saber  a média de preço para os produtos que são pratas(Silver).
SELECT *
FROM Production.Product

SELECT Color, AVG(ListPrice) AS "MédiaPreçoSilver"
FROM Production.Product
WHERE Color = 'Silver' -- no caso ele só vai puxar o produto Silver(prata) com o WHERE;
GROUP BY Color -- valor de produtos pratas(silver) é 850.3053.

--	Desafio GROUP BY.
-- Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas por MiddleName.
SELECT *
FROM Person.Person

SELECT MiddleName, COUNT(MiddleName) AS 'Quantidade'
FROM Person.Person
GROUP BY MiddleName
ORDER BY MiddleName asc -- Desafio feito, no caso coloquei em ordem alfabetica.

-- Eu preciso em média qual é a quantidade(quantity) que cada produto é vendido na loja.
SELECT * 
FROM Sales.SalesOrderDetail

SELECT ProductID, AVG(OrderQty) AS 'Média' 
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Eu quero saber quais foram as 10 vendas que no total tiveram os maiores valores de venda(line total) por produtos do maior para o menor.
SELECT * 
FROM Sales.SalesOrderDetail

SELECT TOP 10 ProductID, SUM(LineTotal) AS 'DezMaioresVendas'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC

-- Eu preciso saber quantos produtos e qual e quantidade média de produtos temos cadastrados nas nossas ordens de serviço(WorkOrder), agrupados por ProductID.
SELECT *
FROM Production.WorkOrder

SELECT ProductID, COUNT(ProductID) AS 'Contagem', AVG(OrderQty) AS 'Média'
FROM Production.WorkOrder
GROUP BY ProductID
ORDER BY ProductID
