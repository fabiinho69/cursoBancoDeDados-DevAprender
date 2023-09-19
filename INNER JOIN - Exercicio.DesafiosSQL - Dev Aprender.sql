--INNER JOIN
	--Vamos dizer que n�s queremos os nomes dos produtos e as informa��es de suas subcategorias
		--ListPrice, Nome do Produto, Nome da Subcategoria

SELECT TOP 10 *
FROM Production.Product

SELECT TOP 10 *
FROM Production.ProductCategory

SELECT PR.ListPrice, PR.Name, PC.Name
FROM Production.Product PR
INNER JOIN Production.ProductCategory PC ON PC.ProductCategoryID = pr.ProductSubcategoryID

