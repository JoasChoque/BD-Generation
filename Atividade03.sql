-- Criando Banco de Dados
CREATE DATABASE db_escola;

USE db_escola;

-- Criando Tabela
CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nomeAluno varchar(255),
    RA varchar(255),
    turma varchar(255),
    nota decimal,
    PRIMARY KEY(id)
);

-- Inserindo Valores
INSERT INTO tb_estudantes(nomeAluno,RA,turma,nota)
VALUES("Marcos","17433088","Turma A",9.0);

INSERT INTO tb_estudantes(nomeAluno,RA,turma,nota)
VALUES("Carlos","17435078","Turma B",5.8);

INSERT INTO tb_estudantes(nomeAluno,RA,turma,nota)
VALUES("Yuri","17412344","Turma C",6.0);

INSERT INTO tb_estudantes(nomeAluno,RA,turma,nota)
VALUES("Luis","17430942","Turma D",10.0);

INSERT INTO tb_estudantes(nomeAluno,RA,turma,nota)
VALUES("Geandro","17534532","Turma E",9.0);

INSERT INTO tb_estudantes(nomeAluno,RA,turma,nota)
VALUES("Thata","19842769","Turma F",8.0);

INSERT INTO tb_estudantes(nomeAluno,RA,turma,nota)
VALUES("Fernanda","14782984","Turma G",7.5);

INSERT INTO tb_estudantes(nomeAluno,RA,turma,nota)
VALUES("Rafael","19480393","Turma H",9.5);

-- Select com notas maiores que 7
SELECT * FROM tb_estudantes WHERE nota>7.0;

-- Select com notas menores que 7
SELECT * FROM tb_estudantes WHERE nota<7.0;

-- Query de alteração
UPDATE tb_estudantes SET nota=7.0 WHERE id=3;