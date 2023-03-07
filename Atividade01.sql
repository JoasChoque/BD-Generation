-- Criando banco de dados
CREATE DATABASE db_rhEmpresa;

USE db_rhEmpresa;

-- Criando tabela
CREATE TABLE td_colaboradores(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    cargo varchar(255),
    salario decimal,
    PRIMARY KEY(id)
);

-- Inserindo valores

INSERT INTO td_colaboradores(nome, idade, cargo, salario) 
values ("Carlos",25,"Gerente de Negócios",1600.00);

INSERT INTO td_colaboradores(nome, idade, cargo, salario) 
values ("Joana",26,"Gerente de Marketing",1800.00);

INSERT INTO td_colaboradores(nome, idade, cargo, salario) 
values ("Marcos",28,"Desenvolvedor Front-end",1500.00);

INSERT INTO td_colaboradores(nome, idade, cargo, salario) 
values ("Thiago",30,"Desenvolvedor Back-end",1200.00);

INSERT INTO td_colaboradores(nome, idade, cargo, salario) 
values ("Carla",29,"Gerente Administrativo",3000.00);

-- Select com salario maior de 2000
SELECT * FROM td_colaboradores WHERE salario>2000;

-- Select com salario menor de 2000
SELECT * FROM td_colaboradores WHERE salario<2000;

-- Query de atualização
UPDATE td_colaboradores SET salario = 3500 WHERE id=3;

