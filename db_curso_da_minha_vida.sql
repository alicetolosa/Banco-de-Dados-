CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    area VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    nivel VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    carga_horaria INT,
    instrutor VARCHAR(100),
    categoria_id BIGINT,
    PRIMARY KEY (id)
);

ALTER TABLE tb_cursos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (area, descricao, nivel) VALUES ('Java', 'Programação Java', 'Intermediário');
INSERT INTO tb_categorias (area, descricao, nivel) VALUES ('Frontend', 'Desenvolvimento Web', 'Iniciante');
INSERT INTO tb_categorias (area, descricao, nivel) VALUES ('Backend', 'Desenvolvimento servidor', 'Intermediário');
INSERT INTO tb_categorias (area, descricao, nivel) VALUES ('Banco de Dados', 'SQL e modelagem', 'Intermediário');
INSERT INTO tb_categorias (area, descricao, nivel) VALUES ('DevOps', 'Infraestrutura e deploy', 'Avançado');

INSERT INTO tb_cursos (nome, preco, carga_horaria, instrutor, categoria_id) VALUES ('Java Completo', 800.00, 60, 'Carlos Silva', 1);
INSERT INTO tb_cursos (nome, preco, carga_horaria, instrutor, categoria_id) VALUES ('Java Avançado', 1200.00, 80, 'Ana Souza', 1);
INSERT INTO tb_cursos (nome, preco, carga_horaria, instrutor, categoria_id) VALUES ('HTML e CSS', 200.00, 40, 'Pedro Lima', 2);
INSERT INTO tb_cursos (nome, preco, carga_horaria, instrutor, categoria_id) VALUES ('JavaScript do Zero', 350.00, 50, 'Mariana Costa', 2);
INSERT INTO tb_cursos (nome, preco, carga_horaria, instrutor, categoria_id) VALUES ('Spring Boot', 900.00, 70, 'João Alves', 3);
INSERT INTO tb_cursos (nome, preco, carga_horaria, instrutor, categoria_id) VALUES ('SQL para Iniciantes', 50.00, 45, 'Fernanda Rocha', 4);
INSERT INTO tb_cursos (nome, preco, carga_horaria, instrutor, categoria_id) VALUES ('Docker e Kubernetes', 1100.00, 60, 'Lucas Martins', 5);
INSERT INTO tb_cursos (nome, preco, carga_horaria, instrutor, categoria_id) VALUES ('JPA e Hibernate', 750.00, 55, 'Ricardo Gomes', 3);

SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT nome, preco, carga_horaria, instrutor, categoria_id, tb_categorias.area, tb_categorias.descricao, tb_categorias.nivel FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;
SELECT nome, preco, carga_horaria, instrutor, categoria_id, tb_categorias.area, tb_categorias.descricao, tb_categorias.nivel FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id WHERE tb_categorias.nivel = "iniciante"