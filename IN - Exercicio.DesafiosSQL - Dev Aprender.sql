SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (1, 10, 100) -- Nesse caso o IN faz com que eu corte caminho na sitaxe, aí estou puxando exatamente as linhas que eu quero.

SELECT *
FROM Person.Person
WHERE BusinessEntityID = 1 OR BusinessEntityID = 10 OR BusinessEntityID = 100; -- Para não repetir ou deixar seu código tão grande usamos o IN nessa caso.
