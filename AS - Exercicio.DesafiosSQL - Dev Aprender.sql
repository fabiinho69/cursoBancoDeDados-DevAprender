--/Desafio AS
	--/1-) Encontrar o FirstName e LastName person.person e mudar o nome das colunas para pt-br.
SELECT TOP 10 FirstName AS 'PrimeiroNome' , LastName AS 'SegundoNome'
FROM Person.Person
	
	--/2-) ProductNumber da tabela production.product e renomear para 'Numero do Produto'
SELECT TOP 10 ProductNumber AS 'Numero do Produto'
FROM Production.Product

	--/3-) sales.SalesOrderDetail unitPrice 'Preço Unitário'
SELECT TOP 10 UnitPrice AS 'Preço Unitário'
FROM Sales.SalesOrderDetail
