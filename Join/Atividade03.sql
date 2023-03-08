-- Criando database
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Criando tabela categoria
CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

-- Criando tabela de produto
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    valor DECIMAL(6,2),
    quantidade INT,
    tarja VARCHAR(255),
    categoria_id BIGINT,
    PRIMARY KEY(id)
);

-- Criando a foreing key
ALTER TABLE tb_produtos ADD CONSTRAINT FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id);

-- Inserindo valores na tabela categoria
INSERT INTO tb_categoria (tipo,descricao) VALUES("Comprimido","Remedio para tosse");
INSERT INTO tb_categoria (tipo,descricao) VALUES("Soro","Soro fisiologico");
INSERT INTO tb_categoria (tipo,descricao) VALUES("Coprimido","Remedio para febre");
INSERT INTO tb_categoria (tipo,descricao) VALUES("Xarope","Xarope para tosse");
INSERT INTO tb_categoria (tipo,descricao) VALUES("Pomada","Pomada para dor muscular");

select * from tb_categoria;

-- Inserindo valores na tabela produtos
INSERT INTO tb_produtos (nome,valor,quantidade,tarja,categoria_id)
VALUES("Dipirona",2.50,10,"Branca",4);

INSERT INTO tb_produtos (nome,valor,quantidade,tarja,categoria_id)
VALUES("Dorflex",3.50,5,"Branca",4);

INSERT INTO tb_produtos (nome,valor,quantidade,tarja,categoria_id)
VALUES("Loratadina",5.50,5,"Branca",1);

INSERT INTO tb_produtos (nome,valor,quantidade,tarja,categoria_id)
VALUES("Loratadina",8.50,2,"Branca",5);

INSERT INTO tb_produtos (nome,valor,quantidade,tarja,categoria_id)
VALUES("Soro",3.00,2,"Branca",3);

INSERT INTO tb_produtos (nome,valor,quantidade,tarja,categoria_id)
VALUES("Dorflex pomada",12.50,1,"Branca",4);

INSERT INTO tb_produtos (nome,valor,quantidade,tarja,categoria_id)
VALUES("Salompas",20.50,2,"Branca",2);

INSERT INTO tb_produtos (nome,valor,quantidade,tarja,categoria_id)
VALUES("Propomax",12.50,1,"Branca",5);

-- Select de produtos com valores maiores que 50
SELECT * FROM tb_produtos WHERE valor>50;

-- Select de produtos com valores entre 5 e 60
SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

-- Select de produtos que contem a letra C
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Inner join juntando as tabelas 
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

-- Inner join retornando um tipo de categoria
SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id
WHERE categoria_id = 5;

