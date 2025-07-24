CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;


CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(20),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome, preco, tamanho, id_categoria) 
VALUES("Marguerita", 35.90, 'Média', 1);
INSERT INTO tb_pizzas (nome, preco, tamanho, id_categoria)
VALUES('Calabresa', 37.50, 'Grande', 1);
INSERT INTO tb_pizzas (nome, preco, tamanho, id_categoria)
VALUES('Frango com Catupiry', 42.00, 'Grande', 2);
INSERT INTO tb_pizzas (nome, preco, tamanho, id_categoria)
VALUES('Chocolate com Morango', 39.90, 'Média', 3);
INSERT INTO tb_pizzas (nome, preco, tamanho, id_categoria)
VALUES('Quatro Queijos', 40.00, 'Média', 2);
INSERT INTO tb_pizzas (nome, preco, tamanho, id_categoria)
VALUES('Brócolis com Alho', 38.00, 'Pequena', 4);
INSERT INTO tb_pizzas (nome, preco, tamanho, id_categoria)
VALUES('Romeu e Julieta', 36.00, 'Média', 3);
INSERT INTO tb_pizzas (nome, preco, tamanho, id_categoria)
VALUES('Mussarela', 29.90, 'Pequena', 5);

SELECT * FROM tb_pizzas;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES('Tradicional', 'Sabores clássicos mais pedidos');
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES('Especiais', 'Sabores com ingredientes mais elaborados');
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES('Doces', 'Pizzas com recheio doce');
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES('Vegetariana', 'Sem ingredientes de origem animal');
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES('Promocional', 'Sabores em promoção');

SELECT * FROM tb_categorias;

UPDATE tb_pizzas SET preco = 50.00 WHERE id_pizza = 3;

UPDATE tb_pizzas SET preco = 69.90 WHERE id_pizza = 7;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "m%";

SELECT p.id_pizza,p.nome AS nome_pizza,p.preco,p.tamanho,c.nome_categoria
FROM tb_pizzas p INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;

SELECT p.id_pizza,p.nome AS nome_pizza,p.preco,p.tamanho,c.nome_categoria
FROM tb_pizzas p INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria;

SELECT p.id_pizza,p.nome AS nome_pizza,p.preco,p.tamanho,c.nome_categoria 
FROM tb_pizzas p INNER JOIN tb_categorias c
ON p.id_categoria = c.id_categoria WHERE c.nome_categoria = "Doces";