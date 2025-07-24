-- Criar o banco de dados
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Criar tabela de produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_validade DATE,
    preco DECIMAL(7,2),
    id_categoria BIGINT,
    PRIMARY KEY (id)
);

-- Inserir produtos
INSERT INTO tb_produtos(nome,data_validade, preco)
 VALUES ("Shamppoo", "2025-11-23", 22.50);
INSERT INTO tb_produtos(nome, data_validade, preco)
 VALUES ("Dipirona 100mg", "2025-11-10", 9.99);
INSERT INTO tb_produtos(nome,data_validade, preco) 
VALUES ("Fraldas", "2025-09-14", 60.00);
INSERT INTO tb_produtos(nome,data_validade, preco) 
VALUES ("Creme Hidratante Corporal", "2025-07-07", 49.99);
INSERT INTO tb_produtos(nome,data_validade, preco)
 VALUES ("Shampoo Anticaspa", "2025-07-02", 22.50);
INSERT INTO tb_produtos(nome,data_validade, preco)
 VALUES ("Creme Hidratante Facial", "2025-07-07", 49.99);
INSERT INTO tb_produtos(nome,data_validade, preco)
 VALUES ("Protetor Solar FPS 50", "2025-07-03", 65.00);
INSERT INTO tb_produtos(nome,data_validade, preco)
 VALUES ("Vitamina C 1g", "2025-07-04", 18.75);
 
 SELECT * FROM tb_produtos;

-- Criar tabela de categorias
CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_categoria)
);

-- Inserir categorias
INSERT INTO tb_categorias (categoria, descricao) 
VALUES ("Medicamentos", "Produtos para tratamento de doenças e sintomas"),
       ("Higiene Pessoal", "Produtos de uso diário para cuidados corporais"),
       ("Cuidados com a Pele", "Cosméticos e hidratantes para uso dermatológico"),
       ("Vitaminas e Suplementos", "Suplementos alimentares e vitamínicos"),
       ("Infantil", "Produtos voltados para cuidados com bebês e crianças");
       
       SELECT * FROM tb_categorias;

-- Adicionar chave estrangeira
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria
FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id_categoria);

SET SQL_SAFE_UPDATES = 1;

UPDATE tb_produtos SET id_categoria = 2 WHERE nome = "Shamppoo";
UPDATE tb_produtos SET id_categoria = 1 WHERE nome = "Dipirona 100mg"; 
UPDATE tb_produtos SET id_categoria = 5 WHERE nome = "Fraldas"; 
UPDATE tb_produtos SET id_categoria = 3 WHERE nome = "Creme Hidratante Corporal"; 
UPDATE tb_produtos SET id_categoria = 2 WHERE nome = "Shampoo Anticaspa";
UPDATE tb_produtos SET id_categoria = 3 WHERE nome = "Creme Hidratante Facial"; 
UPDATE tb_produtos SET id_categoria = 3 WHERE nome = "Protetor Solar FPS 50"; 
UPDATE tb_produtos SET id_categoria = 4 WHERE nome = "Vitamina C 1g"; 

-- Produtos com preço maior que 50
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Produtos com preço entre 5 e 60
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Produtos cujo nome começa com 'C'
SELECT * FROM tb_produtos WHERE nome LIKE "C%";

-- Consulta com INNER JOIN para ver produtos e suas categorias
SELECT p.nome, p.data_validade, p.preco, c.categoria, c.descricao
FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.nome, p.data_validade, p.preco, c.categoria, c.descricao
FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria = "Cosméticos";