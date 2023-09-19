-- DESAFIOS
/* 1-) quantos produtos temos cadastrados no sistema que custam mas que 1500 dolares?*/
SELECT ListPrice
FROM Production.Product -- Aqui peguei a coluna ListPrice da tabela Production.Product para ficar melhor vizualização e ordenei de forma DECRESCENTE para poder pegar o número mais alto . 
ORDER BY ListPrice desc

SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice BETWEEN	'1500' and '3578,27' -- Aqui peguei o número da coluna ListPrice da tabela Production.Product usando o COUNT e filtrei entre 1500 e 3578,27, que foi o valor que consegui puxar usando os comandos a cima (Meu resultado foi igual do Professor).

SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice > 1500 -- Resultado do Professor, de um jeito mais curto e rapido de fazer.

/* 2-) quantas pessoas temos com o sobrenome que inicia com a letra P?*/
SELECT COUNT (LastName)
FROM Person.Person
WHERE LastName Like 'P%'; -- Desafio2 correto! na coluna LastName da tabela Person.Person puxei a quantidade de sobrenome que começa com a letra P com LIKE e COUNT.

/* 3-) em quantas cidades únicas estão cadastradas nossos clientes?*/
SELECT COUNT (DISTINCT (City))
FROM Person.Address;

/* 4-) quais são as cidades únicas que temos cadastrados em nisso sistema?*/
SELECT DISTINCT (City)
FROM Person.Address
ORDER BY City asc

/* 5-) quntos produtos vermelhos tem preco entre 500 a 1000 dolares?*/
SELECT COUNT (*)
FROM Production.Product
WHERE Color = 'red' and ListPrice BETWEEN  500 and 1000

/* 6-) quntos produtos cadastrados tem a palavra 'road' no nome deles?*/
SELECT COUNT (*) 
FROM Production.Product
WHERE Name LIKE '%road%'




