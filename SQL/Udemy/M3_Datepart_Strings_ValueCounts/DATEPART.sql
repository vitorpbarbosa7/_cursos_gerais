-- SQL AULA 20 DATEPART

SELECT *
FROM Sales.SalesOrderHeader

-- Extrair ano
SELECT DATEPART(yy, OrderDate)
FROM Sales.SalesOrderHeader

-- Extrair M�s
SELECT DATEPART(mm, OrderDate)
FROM Sales.SalesOrderHeader

-- Extrair dia:
SELECT DATEPART(dd, OrderDate)
FROM Sales.SalesOrderHeader

--Informa��o do m�s dos pedidos:
SELECT DATEPART(mm, OrderDate) 'M�s'
FROM Sales.SalesOrderHeader


--Retornar o valor total de pedidos de todos os meses:
SELECT * 
FROM Sales.SalesOrderHeader

SELECT AVG(TotalDue) as 'Average', DATEPART(day, OrderDate) as 'Day'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(day, OrderDate)
ORDER BY 'Average' desc

--Outra tabela qualquer e retornar m�s e data
SELECT * 
FROM Purchasing.PurchaseOrderHeader

SELECT SUM(TotalDue) as 'Total', DATEPART(month, OrderDate) as 'Month'
FROM Purchasing.PurchaseOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY 'Total' desc