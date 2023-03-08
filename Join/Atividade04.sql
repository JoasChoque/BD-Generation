-- Criando banco de dados
CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

-- Criando tabela categorias
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

-- Criando tabela produtos
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    valor DECIMAL(6,2),
    corte VARCHAR(255),
    quantidade VARCHAR(255),
    categoria_id BIGINT,
    PRIMARY KEY(id)
);

-- Criando a foreign key
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_cat FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id);

-- Inserindo registros na tabela categorias
INSERT INTO tb_categorias (tipo,descricao) VALUES("Carne","Carne de Boi");
INSERT INTO tb_categorias (tipo,descricao) VALUES("Frango","Carne de Frango");
INSERT INTO tb_categorias (tipo,descricao) VALUES("Peixe","Carne de Peixe");
INSERT INTO tb_categorias (tipo,descricao) VALUES("Vegano","Carne Vegana");
INSERT INTO tb_categorias (tipo,descricao) VALUES("Cogumelo","Carne de Cogumelo");

-- Inserindo registros na tabela produtos
INSERT INTO tb_produtos(valor,corte,quantidade,categoria_id) VALUES(100.00,"Picanha",2,1);
INSERT INTO tb_produtos(valor,corte,quantidade,categoria_id) VALUES(20.00,"Peito de Frango",3,2);
INSERT INTO tb_produtos(valor,corte,quantidade,categoria_id) VALUES(25.00,"Filé de Frango",3,2);
INSERT INTO tb_produtos(valor,corte,quantidade,categoria_id) VALUES(40.00,"Filé de Peixe",5,3);
INSERT INTO tb_produtos(valor,corte,quantidade,categoria_id) VALUES(50.00,"Alcatra",4,1);
INSERT INTO tb_produtos(valor,corte,quantidade,categoria_id) VALUES(20.00,"Músculo",2,1);
INSERT INTO tb_produtos(valor,corte,quantidade,categoria_id) VALUES(70.00,"Champingon",10,5);
INSERT INTO tb_produtos(valor,corte,quantidade,categoria_id) VALUES(80.00,"Carne de Soja",5,4);

-- Select retornando produtos com valor maior que R$50
SELECT * FROM tb_produtos WHERE valor>50;

-- Select retornando produtos com valor entre 50 e 150
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

-- Select retornando nomes do produto com a letra C
SELECT * FROM tb_produtos WHERE corte LIKE "%C%";

-- Inner join juntando as tabelas
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id=tb_produtos.categoria_id;

-- Inner join retornando apenas uma categoria
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id=tb_produtos.categoria_id WHERE categoria_id=1;



