-- MIN MAX SUM AVG
SELECT TOP 10 SUM(LineTotal) AS 'SOMA'-- AS para atribuir um apelido para coluna e SUM somar as colunas ou linhas. 
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(LineTotal) AS 'MINIMO' -- MIN para ver o menor valor daquela coluna. 
FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(LineTotal) AS 'MAXIMO' -- MAX para ver o maior valor daquela coluna. 
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(LineTotal) AS 'MÉDIA' -- AVG para ver a media de valores daquela coluna. 
FROM Sales.SalesOrderDetail