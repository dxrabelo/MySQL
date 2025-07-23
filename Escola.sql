CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    serie VARCHAR(50) NOT NULL,
    notas DECIMAL (3,1)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, data_nascimento, serie, notas) 
VALUES('Ana Beatriz Silva', '2010-04-15', '6º ano', 8.75);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, notas) 
VALUES('João Pedro Almeida', '2009-11-22', '7º ano', 7.40);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, notas) 
VALUES('Luiza Fernandes', '2011-02-03', '5º ano', 9.10);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, notas) 
VALUES('Carlos Henrique Souza', '2008-08-10', '8º ano', 6.95);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, notas) 
VALUES('Marina Lopes', '2012-06-29', '4º ano', 9.50);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, notas) 
VALUES('Gustavo Oliveira', '2007-01-19', '9º ano', 5.80);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, notas) 
VALUES('Isabela Rocha', '2010-10-05', '6º ano', 8.20);

INSERT INTO tb_estudantes (nome, data_nascimento, serie, notas) 
VALUES('Eduardo Lima', '2009-03-17', '7º ano', 7.90);

SELECT * FROM tb_estudantes WHERE notas < 7.0;

SELECT * FROM tb_estudantes WHERE notas > 7.0;

UPDATE tb_estudantes SET notas = 8.0 WHERE id = 8;