-- ORDER BY

SELECT FirstName, LastName
FROM Person.Person
ORDER BY MiddleName asc

SELECT * 
FROM Person.Person;

SELECT TOP(10) ProductID, ListPrice -- Desafio1 correto, pediu para obter o ProductID dos 10 produtos mais caros na tabela, listando do mais caro para o mais barato.
FROM Production.Product	
ORDER BY ListPrice desc

SELECT TOP(4) Name, ProductNumber, ProductID -- Desafio2 correto, no caso puxei as colunas e as 4 primeiras linhas na ordem crescente, na coluna ProductID
FROM Production.Product
ORDER BY ProductID asc


