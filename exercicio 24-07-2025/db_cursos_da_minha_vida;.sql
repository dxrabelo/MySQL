CREATE DATABASE db_cursos_da_minha_vida;

USE db_cursos_da_minha_vida;

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    carga_horaria INT,
    modalidade VARCHAR(255),
    valor DECIMAL(7,2),
    id_categoria BIGINT,
    PRIMARY KEY (id)
    );
    
INSERT INTO tb_cursos (nome, carga_horaria, modalidade, valor, id_categoria)
VALUES("Java Básico", 40, "Online", 599.90, 1);
INSERT INTO tb_cursos (nome, carga_horaria, modalidade, valor, id_categoria)
VALUES("Java Avançado", 60, "Online", 999.90, 1);
INSERT INTO tb_cursos (nome, carga_horaria, modalidade, valor, id_categoria)
VALUES("Farmácia Clínica na Prática", 30, "Presencial", 750.00, 2);
INSERT INTO tb_cursos (nome, carga_horaria, modalidade, valor, id_categoria)
VALUES("Cosmetologia e Estética", 45, "Online", 520.00, 3);
INSERT INTO tb_cursos (nome, carga_horaria, modalidade, valor, id_categoria)
VALUES("Fitoterapia Aplicada", 35, "Online", 680.00, 4);
INSERT INTO tb_cursos (nome, carga_horaria, modalidade, valor, id_categoria)
VALUES("Gestão de Farmácias", 50, "Online", 850.00, 5);
INSERT INTO tb_cursos (nome, carga_horaria, modalidade, valor, id_categoria)
VALUES("Marketing Farmacêutico", 20, "Online", 480.00, 5);
INSERT INTO tb_cursos (nome, carga_horaria, modalidade, valor, id_categoria)
VALUES("Jogos Educativos em Saúde", 25, "Presencial", 610.00, 2);

SELECT * FROM tb_cursos;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_categoria) 
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES("Java", "Cursos voltados para desenvolvimento com Java");
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES("Farmácia Clínica", "Cursos relacionados à atuação clínica do farmacêutico");
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES("Cosmetologia", "Cursos focados em cosméticos e cuidados com a pele");
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES("Fitoterapia", "Estudo de medicamentos à base de plantas");
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES("Gestão Farmacêutica", "Cursos de gestão, administração e marketing para farmácias");

SELECT * FROM tb_categorias;

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categoria
FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id_categoria);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT c.*, cat.nome_categoria AS categoria_nome
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;

SELECT c.*, cat.nome_categoria AS categoria_nome
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria
WHERE cat.nome_categoria = 'Java';
