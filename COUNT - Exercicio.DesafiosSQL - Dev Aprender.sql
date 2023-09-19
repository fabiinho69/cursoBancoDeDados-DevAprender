-- COUNT

SELECT COUNT (DISTINCT title)
FROM Person.Person;

SELECT COUNT (*)
FROM Production.Product; -- Desafio1 correto, ele quer saber quantos produtos temos cadastrados em nossa tabela de produtos.

SELECT COUNT (Size)
FROM Production.Product; -- Desafio2 correto, ele quer saber quantos tamanhos de produtos temos cadastrados em nossa tabela.

SELECT COUNT (DISTINCT Size)
FROM Production.Product; -- Desafio3 correto, ele quer saber quantos tamanhos diferentes de produtos temos cadastrados em nossa tabela.