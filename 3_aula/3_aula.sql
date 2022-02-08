/*Criar base de dados*/
CREATE DATABASE supermercado;

/*Criar tabela*/
CREATE TABLE `vendas` (
    `id_compra` INT NOT NULL AUTO_INCREMENT,
    `Item_Comprado` INT NOT NULL,
    `Local_Comprado` INT NOT NULL,
    `Quantidade_comprada` INT NOT NULL,
    PRIMARY KEY (`id_compra`)
);

CREATE TABLE `itens` (
	`id_itens` INT NOT NULL AUTO_INCREMENT,
    `Categoria` VARCHAR(50) NOT NULL,
    `Nome` VARCHAR(50) NOT NULL,
    `Valor_do_item` FLOAT NOT NULL,
    PRIMARY KEY (`id_itens`)
);

CREATE TABLE `local` (
	`id_local` INT NOT NULL AUTO_INCREMENT,
    `Cidade` VARCHAR(50) NOT NULL,
    `Nome` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`id_local`)
);

/*ALterar tabelas*/

ALTER TABLE `vendas` ADD COLUMN `Valor total` FLOAT NOT NULL;

ALTER TABLE `vendas` ADD CONSTRAINT  `fk_vendas_itens` FOREIGN KEY (`Item_Comprado`) REFERENCES `itens` (`id_itens`);
ALTER TABLE `vendas` ADD CONSTRAINT  `fk_vendas_local` FOREIGN KEY (`Local_Comprado`) REFERENCES `local` (`id_local`);

/*Inserir Dados na Tabela Local*/
INSERT INTO
	local (Cidade,Nome)
VALUES
	('Norte','Mercado1'),
    ('Norte','Mercado2'),
    ('Sul','Mercado1'),
    ('Sul','Mercado2'),
    ('Leste','Mercado1'),
    ('Leste','Mercado2'),
    ('Oeste','Mercado1'),
    ('Oeste','Mercado2');
/*Inserir Dados na Tabela Itens*/
INSERT INTO 
	itens(Categoria,Nome,Valor_do_item)
VALUES
	('Alimento','jujuba',2),
    ('Alimento','café',4.40),
    ('Alimento','arroz',5.70),
    ('Alimento','feijão',5.20),
    ('Eletrônico','mouse',15.20),
    ('Eletrônico','teclado',30.50),
    ('Eletrônico','carregador',20.20);

/*Inserir Dados na Tabela Vendas*/
INSERT INTO 
	vendas (Item_Comprado,Local_Comprado,Quantidade_comprada) 
VALUES 
	(1,2,5),
    (2,1,6),
    (5,6,10),
    (3,3,6),
    (4,5,3),
    (4,8,11),
    (7,7,9),
    (3,4,27),
    (2,1,8),
    (10,1,13);

/*Olhar a tabela*/
SELECT * FROM vendas;

/*Atualizar dados*/

UPDATE vendas 
SET Quantidade_comprada = 4
WHERE id_compra = 1;

SELECT * FROM vendas;
/*Deletar linha*/

DELETE FROM `vendas` WHERE `id_compra` = 1;

SELECT * FROM vendas;
/*Excluir tabelas ou colunas*/

ALTER TABLE vendas
DROP COLUMN `Quantidade_comprada`;

SELECT * FROM vendas;

DROP TABLE vendas;