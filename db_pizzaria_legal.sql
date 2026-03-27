CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT, 
    tipo VARCHAR(100), -- Tipo da pizza (Doce/Salgada)
    descricao VARCHAR(255), 
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL, 
    tamanho VARCHAR(50), -- Tamanho (Pequena, Média, Grande)
    preco DECIMAL(6,2), -- Valor da pizza
    borda VARCHAR(100), -- Tipo de borda
    categoria_id BIGINT, -- Chave estrangeira
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Doce", "Pizzas doces");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Salgada", "Pizzas tradicionais salgadas");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Vegetariana", "Sem carne");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Especial", "Pizzas gourmet");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Premium", "Pizzas diferenciadas");

INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Calabresa", "Grande", 40.00, "Recheada", 2);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Mussarela", "Média", 35.00, "Tradicional", 2);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Chocolate", "Grande", 55.00, "Recheada", 1);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Morango com Chocolate", "Pequena", 35.00, "Recheada", 1);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Vegetariana Especial", "Média", 50.00, "Tradicional", 3);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Frango com Catupiry", "Grande", 70.00, "Recheada", 4);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Quatro Queijos", "Grande", 60.00, "Tradicional", 5);
INSERT INTO tb_pizzas (nome, tamanho, preco, borda, categoria_id) VALUES ("Milho com Bacon", "Média", 45.00, "Recheada", 2);

UPDATE tb_pizzas SET preco = 100 WHERE id = 5;

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, tamanho, preco, borda, categoria_id, tb_categorias.tipo, tb_categorias.descricao FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT nome, tamanho, preco, borda, categoria_id, tb_categorias.tipo, tb_categorias.descricao FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.tipo = "Doce";


SELECT nome_personagem, nivel, ataque, defesa, tb_classes.tipo, tb_classes.especialidade FROM tb_personagens  INNER JOIN tb_classes  ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.tipo = "Fogo";