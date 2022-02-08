/* Usando WHERE AND ,OR*/
SELECT * FROM vendas WHERE Quantidade_comprada > 5;

SELECT * FROM vendas WHERE (Quantidade_comprada > 5) AND (Quantidade_comprada < 10);
SELECT * FROM vendas WHERE (Quantidade_comprada <= 5) OR (Quantidade_comprada > 10);

SELECT * FROM vendas WHERE Quantidade_comprada < 6 AND Quantidade_comprada != 3;

/*Usando NOT,IN,DISTINC,LIKE*/
SELECT * FROM vendas WHERE NOT Quantidade_comprada > 5;

SELECT * FROM vendas WHERE Quantidade_comprada IN (5,6);

SELECT DISTINCT Quantidade_comprada FROM vendas;

/*Falar depois sobre os outros operadores*/

SELECT * FROM vendas WHERE Quantidade_comprada LIKE '1%';

/*Usando o LIMIT*/

SELECT * FROM vendas LIMIT 4;

/*Usando o ORDER BY*/
SELECT * FROM vendas ORDER BY Quantidade_comprada LIMIT 4;

/*Alias*/

SELECT Quantidade_comprada as Quantidade FROM vendas ORDER BY Quantidade LIMIT 4;

/*Funções*/
SELECT AVG(Quantidade_comprada) as Média FROM vendas;

SELECT MAX(Quantidade_comprada) as Maximo FROM vendas;

SELECT MIN(Quantidade_comprada) as Minimo FROM vendas;

/*GROUPBY*/

SELECT 
    Item_comprado AS Item,
    MAX(Quantidade_comprada) AS Quantidade
FROM
    vendas
GROUP BY Item;

/*Ascendente de Descendente*/

SELECT * FROM itens ORDER BY Valor_do_item ASC;

SELECT * FROM itens ORDER BY Valor_do_item DESC;

SELECT 
    Categoria,
    MAX(Valor_do_item) AS Valor
FROM
    itens
GROUP BY Categoria;

/*UNION e UNION ALL*/

SELECT Item_Comprado,Local_Comprado FROM vendas WHERE Quantidade_comprada <= 6

UNION

SELECT Item_Comprado,Local_Comprado FROM vendas WHERE Quantidade_comprada > 6;

SELECT Item_Comprado,Local_Comprado FROM vendas WHERE Quantidade_comprada <= 6

UNION ALL

SELECT Item_Comprado,Local_Comprado FROM vendas WHERE Quantidade_comprada > 6;