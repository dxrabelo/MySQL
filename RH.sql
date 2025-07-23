CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    departamento VARCHAR(255) NOT NULL,
    data_admissao DATE,
    salario DECIMAL(7,2),
    status VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, departamento, data_admissao, salario, status)
VALUES ('João Silva', 'Desenvolvedor BackEnd', 'Tecnologia', '2022-03-15', 8300.00, 'Ferias');

INSERT INTO tb_colaboradores(nome, cargo, departamento, data_admissao, salario, status)
VALUES ('Ana Costa', 'Analista de RH', 'Recursos Humanos', '2023-10-20', 2600.00, 'Ativo');

INSERT INTO tb_colaboradores(nome, cargo, departamento, data_admissao, salario, status)
VALUES ('Daniel Oliveira', 'Estagiário', 'Marketing', '2023-01-19', 1800.00, 'Inativo');

INSERT INTO tb_colaboradores(nome, cargo, departamento, data_admissao, salario, status)
VALUES ('Elaine Oliveira', 'Gerente Financeira', 'Financeiro', '2020-05-10', 5000.00, 'Ativo');

INSERT INTO tb_colaboradores(nome, cargo, departamento, data_admissao, salario, status)
VALUES ('Bruno Silva', 'Analista de Dados', 'Tecnologia', '2023-02-15', 7800.00, 'Ativo');


SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

UPDATE tb_colaboradores SET status = "Ativo" WHERE id = 1;