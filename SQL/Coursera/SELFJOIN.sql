--SELF JOIN
SELECT *
FROM Person.CountryRegion

--N�o entendi porra nenhuma da utilidade disso

SELECT A.Name AS Name1, B.Name AS Name2, A.CountryRegionCode
FROM Person.CountryRegion AS A, Person.CountryRegion AS B
WHERE A.CountryRegionCode = B.CountryRegionCode
