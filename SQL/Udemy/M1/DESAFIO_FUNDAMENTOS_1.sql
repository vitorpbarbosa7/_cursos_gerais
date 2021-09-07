-- DESAFIO FUNDAMENTOS
/*
1 - Quantos produtos h� cadastrados no sistema que custam mais que 1500 dolares?
*/

SELECT count(*)
FROM Production.Product
WHERE ListPrice > 1500

/* 
2 - Quantas pessoas iniciam o sobrenome com a letra P?
*/

SELECT count(*)
FROM Person.Person
WHERE LastName LIKE 'P%'

/*
3 - Quantas cidades �nicas est�o cadastradas nos clientes?
*/

SELECT count(DISTINCT City)
FROM Person.Address
--H� 575 cidades �nicas

/*
4 - Quais s�o as cidades �nicas que temos cadastrados em nosso sistema ? 
*/

SELECT DISTINCT City
FROM Person.Address

/*
5 - Quantos produtos vermelhos tem pre�o entre 500 e 1000 d�lares
*/


SELECT count(*)
FROM Production.Product
WHERE Color IN ('Red') AND ListPrice BETWEEN 500 AND 1000

/*
6 - Quantos produtos cadastrados t�m a palavra Road no nome deles?
*/

SELECT count(*)
FROM Production.Product
WHERE Name LIKE '%road%'