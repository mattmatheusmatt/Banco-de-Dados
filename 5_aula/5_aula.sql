/*INNER,LEFT,RIGHT,ALL JOIN*/

SELECT  Distinct Item_comprado FROM vendas;

SELECT * FROM itens;

SELECT * FROM vendas a LEFT JOIN itens b ON a.Item_Comprado = b.id_itens;

SELECT * FROM vendas a RIGHT JOIN itens b ON a.Item_Comprado = b.id_itens;

SELECT * FROM vendas a INNER JOIN itens b ON a.Item_Comprado = b.id_itens;

SELECT * FROM vendas a LEFT JOIN itens b ON a.Item_Comprado = b.id_itens

UNION

SELECT * FROM vendas a RIGHT JOIN itens b ON a.Item_Comprado = b.id_itens;


SELECT * FROM itens;



SELECT 
   Categoria, AVG(Quantidade_comprada) AS Média
FROM
    vendas a
        INNER JOIN
    itens b ON a.Item_Comprado = b.id_itens
GROUP BY Categoria;