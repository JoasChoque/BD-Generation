-- Criando database
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Criando tabela categoria
CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    tamanho VARCHAR(255),
    PRIMARY KEY(id)
);

-- Criando tabela de pizzas
CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    valor DECIMAL(6,2),
    quantidade INT,
    sabor VARCHAR(255),
    PRIMARY KEY(id)
);

-- CRIANDO FOREING KEY
ALTER TABLE tb_pizzas ADD categoria_id BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_classifica_categoria
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

-- Inserindo registros na tabela categoria
INSERT INTO tb_categoria (tipo,tamanho) VALUES ("Doce","Grande");
INSERT INTO tb_categoria (tipo,tamanho) VALUES ("Salgada","Grande");
INSERT INTO tb_categoria (tipo,tamanho) VALUES ("Doce","Broto");
INSERT INTO tb_categoria (tipo,tamanho) VALUES ("Salgada","Broto");
INSERT INTO tb_categoria (tipo,tamanho) VALUES ("Doce","esfiha");

-- Inserindo registros na tabela categoria
INSERT INTO tb_pizzas(nome,valor,quantidade,sabor,categoria_id)
VALUES("Portuguesa",40.0,5,"Calabresa,presunto e queijo",2);

INSERT INTO tb_pizzas(nome,valor,quantidade,sabor,categoria_id)
VALUES("Calabrea",35.0,10,"Calabresa,cebola",4);

INSERT INTO tb_pizzas(nome,valor,quantidade,sabor,categoria_id)
VALUES("Queijo",35.0,8,"Queijo",4);

INSERT INTO tb_pizzas(nome,valor,quantidade,sabor,categoria_id)
VALUES("Prestigio",45.0,3,"Chocolate e coco ralado",1);

INSERT INTO tb_pizzas(nome,valor,quantidade,sabor,categoria_id)
VALUES("Sensação",48.0,2,"Chocolate com morango",3);

INSERT INTO tb_pizzas(nome,valor,quantidade,sabor,categoria_id)
VALUES("M&M",15.0,6,"Chocolate com M&M",5);

INSERT INTO tb_pizzas(nome,valor,quantidade,sabor,categoria_id)
VALUES("4 Queijos",38.0,10,"Parmesão,Catupiry,Mussarela,Provolone",2);

INSERT INTO tb_pizzas(nome,valor,quantidade,sabor,categoria_id)
VALUES("Doce de leite",12.0,10,"Esfiha de doce de leite",5);

-- Select com as pizzas com valores maiores que R$45
SELECT * FROM tb_pizzas WHERE valor>45.0;

-- Select com as pizzas com valor no intervalo de 50 a 100
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

-- Select com as pizzas com a letra M no nome
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- Inner join juntando as duas tabelas
SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id;

-- Inner join retornando apenas as pizzas doces
SELECT * FROM tb_pizzas INNER JOIN tb_categoria ON tb_categoria.id = tb_pizzas.categoria_id WHERE tipo = "Doce";


