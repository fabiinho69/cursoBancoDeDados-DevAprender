/*
OPERADOR  - DESCRI��O
=			IGUAL
>			MAIOR QUE
<			MENOR QUE
>=			MAIOR IGUAL
<=			MENOR IGUAL
<>			DIFERENTE DE
AND			OPERADOR L�GICO E 
OR			OPERADOR L�GICO OU
*/

SELECT *
FROM Person.Person
WHERE LastName = 'miller'; -- Igual =

SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna'; -- E and

SELECT *
FROM Production.Product
WHERE Color = 'blue' or Color = 'black'; -- OU or


SELECT *
FROM Production.Product
WHERE ListPrice > 1500 and ListPrice < 5000 -- Maior que >, Menor que <
 
 
SELECT *
FROM Production.Product
WHERE color <> 'red' -- Diferente de <>

SELECT Name
FROM Production.Product
WHERE Weight > 500 and  Weight < 700 -- Desafio1 correto, a equipe de produtos precisa do nome de todas as pe�as que pesam mais que 500kg mas n�o mais que 700kg para inspe��o.

SELECT *
FROM HumanResources.Employee
WHERE SalariedFlag <> 0 and MaritalStatus = 'M' -- Desafio2 correto, equipe de marketing pediu uma rela��o de todos os empregados(employees) que s�o casados(sigle-solteiro, married-casado) e s�o asalariados(salaried).

SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs' -- Desafio3 correto, aqui puxei nome e sobre nome do usuario
SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26 -- Desafio3 correto, puxei e-mail pelo BusinessEntityID s� de analisar as duas tabelas Person.Person e Person.EmailAddress.
