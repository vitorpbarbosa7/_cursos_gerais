--AS 

/* Para renomear uma coluna, uma agrega��o ou alguma outra coisa */

SELECT ListPrice as 'Pre�o Total'
FROM Production.Product

SELECT TOP 10 AVG(ListPrice) as 'M�dia'
FROM Production.Product

SELECT FirstName as 'Primeiro Nome', LastName as '�ltimo nome'
FROM Person.Person

SELECT ProductNumber as 'N�mero do produto'
FROM Production.Product 

SELECT UnitPrice as 'Pre�o unit�rio'
FROM Sales.SalesOrderDetail