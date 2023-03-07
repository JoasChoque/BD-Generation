-- Criando database
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

-- Criadno tabela produtos
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    preco decimal,
    quantidade int,
    marca varchar(255),
    PRIMARY KEY(id)
);

-- Inserindo valores
INSERT INTO tb_produtos(nome,preco,quantidade,marca)
VALUES ("Estojo",10.00,3,"tilibra");

INSERT INTO tb_produtos(nome,preco,quantidade,marca)
VALUES ("Lápis",2.00,10,"Faber-Castel");

INSERT INTO tb_produtos(nome,preco,quantidade,marca)
VALUES ("Borracha",2.00,5,"Faber-Castel");

INSERT INTO tb_produtos(nome,preco,quantidade,marca)
VALUES ("Caneta",2.50,5,"BIC");

INSERT INTO tb_produtos(nome,preco,quantidade,marca)
VALUES ("Apontador",2.00,3,"tilibra");

INSERT INTO tb_produtos(nome,preco,quantidade,marca)
VALUES ("Caderno",13.00,2,"Spiral");

INSERT INTO tb_produtos(nome,preco,quantidade,marca)
VALUES ("Mochila",30.00,1,"Mochila Ben 10");

INSERT INTO tb_produtos(nome,preco,quantidade,marca)
VALUES ("Corretivo",8.00,2,"BIC");

-- Select com produtos com preco maior que 500
SELECT * FROM tb_produtos WHERE preco>500;

-- Select com produtos com preco menor que 500
SELECT * FROM tb_produtos WHERE preco<500;

-- Query com atualização
UPDATE tb_produtos SET preco=500.00 WHERE id = 7;


