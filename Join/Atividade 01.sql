CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Criando tabela de classes
CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    nomeClasse VARCHAR(255),
    tipoClasse VARCHAR(255),
    PRIMARY KEY(id)
);

-- Criando tabela de personagens
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome varchar(255),
	poderDeAtaque int,
    poderDeDefesa int,
    raca varchar(255),
    PRIMARY KEY(id)
);

-- Criando campo para a foreign key
ALTER TABLE tb_personagens ADD classe_id BIGINT;

-- Criando a foreing key
ALTER TABLE tb_personagens ADD CONSTRAINT fk_classifica 
FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

-- Inserindo valores na tabela de classes
INSERT INTO tb_classes(nomeClasse, tipoClasse)
VALUES("Arqueiro","Distância");

INSERT INTO tb_classes(nomeClasse, tipoClasse)
VALUES("Berserker","Corpo a Corpo");

INSERT INTO tb_classes(nomeClasse, tipoClasse)
VALUES("Mago","Magia");

INSERT INTO tb_classes(nomeClasse, tipoClasse)
VALUES("Bardo","Suporte");

INSERT INTO tb_classes(nomeClasse, tipoClasse)
VALUES("Ladino","Furtividade");

-- Inserindo valores na tabela personagens
INSERT INTO tb_personagens(nome,poderDeAtaque,poderDeDefesa,raca,classe_id)
VALUES("Thiago",1500,2000,"Morto-vivo",3);

INSERT INTO tb_personagens(nome,poderDeAtaque,poderDeDefesa,raca,classe_id)
VALUES("Beatriz",1900,2500,"Elfo",1);

INSERT INTO tb_personagens(nome,poderDeAtaque,poderDeDefesa,raca,classe_id)
VALUES("Thaina",2100,1500,"Vampira",4);

INSERT INTO tb_personagens(nome,poderDeAtaque,poderDeDefesa,raca,classe_id)
VALUES("Catiane",2500,2000,"Humana",2);

INSERT INTO tb_personagens(nome,poderDeAtaque,poderDeDefesa,raca,classe_id)
VALUES("Marcos",1400,1000,"Troll",5);

INSERT INTO tb_personagens(nome,poderDeAtaque,poderDeDefesa,raca,classe_id)
VALUES("Julia",1600,2000,"Deusa",3);

INSERT INTO tb_personagens(nome,poderDeAtaque,poderDeDefesa,raca,classe_id)
VALUES("Jainna",1800,2500,"Metamorfo",3);

INSERT INTO tb_personagens(nome,poderDeAtaque,poderDeDefesa,raca,classe_id)
VALUES("Taymara",1900,1500,"Elfa",1);

-- Select com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poderDeAtaque > 2000;

-- Select com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poderDeDefesa BETWEEN 1000 AND 2000;

-- Select com todos os personagens que possuam a letra C no nome
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- Inner join entre as tabelas
select * from tb_personagens 
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

-- Inner join retornando apenas uma classe
select * from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE classe_id = 1;


