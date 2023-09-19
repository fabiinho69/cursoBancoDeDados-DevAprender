-- BETWEEN
 SELECT HireDate
 FROM HumanResources.Employee
 WHERE HireDate BETWEEN '2005/01/01' and '2009/01/01' -- No caso estou puxando entre(BETWEEN) esses anos inscristos, a data de contratação. BETWEEN - substitui esse comando todo-> (HireDate >= '2005/01/01' && HireDate <= '2009/01/01').
 ORDER BY HireDate;