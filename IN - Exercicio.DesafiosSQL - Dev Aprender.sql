SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (1, 10, 100) -- Nesse caso o IN faz com que eu corte caminho na sitaxe, a� estou puxando exatamente as linhas que eu quero.

SELECT *
FROM Person.Person
WHERE BusinessEntityID = 1 OR BusinessEntityID = 10 OR BusinessEntityID = 100; -- Para n�o repetir ou deixar seu c�digo t�o grande usamos o IN nessa caso.
