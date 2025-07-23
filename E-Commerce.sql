CREATE DATABASE db_ecommecer;

USE db_ecommecer;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    estoque INT NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    data_cadastro DATE,
    preco DECIMAL(7,2),
	peso DECIMAL(6,2),
    descricao TEXT,
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, estoque, categoria, marca, data_cadastro, preco, peso, descricao) 
VALUES('Smartphone Galaxy S21', 50, 'Tecnologia', 'Samsung', '2023-05-10', 2999.99, 0.25, 'Smartphone com tela AMOLED de 6.2 polegadas, 128GB de armazenamento.');

INSERT INTO tb_produtos (nome, estoque, categoria, marca, data_cadastro, preco, peso, descricao)
VALUES('Notebook Dell Inspiron', 20, 'Tecnologia', 'Dell', '2023-03-15', 4500.00, 2.50, 'Notebook com processador Intel i5, 8GB RAM, SSD 256GB.');

INSERT INTO tb_produtos (nome, estoque, categoria, marca, data_cadastro, preco, peso, descricao)
VALUES('Fone de Ouvido Bluetooth', 75, 'Tecnologia', 'Sony', '2024-04-05', 399.90, 0.15, 'Fone sem fio com cancelamento de ruído e bateria de longa duração.');

INSERT INTO tb_produtos (nome, estoque, categoria, marca, data_cadastro, preco, peso, descricao)
VALUES('Tablet iPad Air', 30, 'Tecnologia', 'Apple', '2024-06-12', 3700.00, 0.45, 'Tablet com tela Retina de 10.9", chip M1, 64GB armazenamento.');

INSERT INTO tb_produtos (nome, estoque, categoria, marca, data_cadastro, preco, peso, descricao)
VALUES('Smartwatch Fitbit Versa 3', 40, 'Tecnologia', 'Fitbit', '2025-02-28', 1200.50, 0.05, 'Smartwatch com monitoramento cardíaco e GPS integrado.');

SELECT * FROM tb_produtos WHERE preco < 500.00;

SELECT * FROM tb_produtos WHERE preco > 500.00;

UPDATE tb_produtos SET preco = 2899.99 WHERE id = 1;