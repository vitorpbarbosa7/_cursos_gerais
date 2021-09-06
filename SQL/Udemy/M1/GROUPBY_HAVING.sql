-- HAVING

-- HAVING � basicamente um WHERE para dados agrupados

-- Where � aplicado antes dos dados serem agrupados
-- Having � aplicado ap�s os dados serem agrupados

SELECT FirstName, COUNT(FirstName) as 'CountName'
FROM Person.Person
GROUP BY FirstName
HAVING count(FirstName) > 10

--DOIS GROUP BY? 
SELECT FirstName, LastName, COUNT(FirstName) as 'FirstCount', COUNT(LastName) as 'LastCount'
FROM Person.Person
GROUP BY FirstName, LastName

-- Quais produtos que no total de vendas est�o entre 162K a 500K?
SELECT ProductID, SUM(LineTotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

--Utilizando WHERE e HAVING na mesma pesquisa

-- Quais nomes no sistema t�m ocorr�ncia maior que 10 vezes, por�m apenas onde o t�tulo � 'Mr."
SELECT *
FROM Person.Person

SELECT FirstName, COUNT(FirstName) as 'CountFirstName'
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

--DESAFIO:

-- Identificar as prov�ncias (StateProvinceid) com o maior n�mero de cadastros no sistema. 
SELECT *
FROM Person.Address

SELECT StateProvinceID, COUNT(StateProvinceID) as "Quantity"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000
ORDER BY Quantity desc


-- Quais produtos n�o est�o trazendo em m�dia no m�nimo 1000000 de vendas
SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, AVG(LineTotal) as 'AvgTotal'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000	