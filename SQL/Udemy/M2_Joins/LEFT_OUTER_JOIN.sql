/* 
LEFT OUTER JOIN:
Retornar� todas PK de A, e as PK de A que estiverem em B, preenchendo com nulo os campos que n�o existirem em B da PK de A, mas n�o retornar� PK de B. 

Pode ser abreviado apenas como LEFT JOIN 
*/

--Quest�o: Quais pessoas possuem um cart�o de cr�dito?

--Ao rodar esta Query, na tabela Sales.PersonCreditCard, n�o � poss�vel descobrir o nome das pessoas que possuem cart�o de cr�dito
SELECT *
FROM Sales.PersonCreditCard

SELECT * 
FROM Person.Person

-- Retorna apenas a BusinessEntityID que existe em ambas as tabelas:
SELECT *
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
-- COM INNER JOIN : 19118 linhas

-- Retorna todas as BusinessEntityID que existem na tabela A, mesmo que ela n�o exista na tabela B
SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
ORDER BY PC.BusinessEntityID
-- COM LEFT JOIN : 19972 linhas

-- Mostrar pessoas sem cart�o de cr�dito registrado:
SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL
--Porque mostrar� aquelas que existem na tabela A mas n�o existem na tabela B, 
--Se BusinessEntityID aparecer como NULL, significa que existe em A, mas n�o existe em B

-- 