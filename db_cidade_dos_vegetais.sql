CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    origem VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT,
    unidade VARCHAR(20),
    categoria_id BIGINT,
    PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);


INSERT INTO tb_categorias (tipo, descricao, origem) VALUES ('Frutas', 'Frutas frescas', 'Nacional');
INSERT INTO tb_categorias (tipo, descricao, origem) VALUES ('Verduras', 'Folhas e verduras', 'Orgânico');
INSERT INTO tb_categorias (tipo, descricao, origem) VALUES ('Legumes', 'Legumes variados', 'Nacional');
INSERT INTO tb_categorias (tipo, descricao, origem) VALUES ('Orgânicos', 'Sem agrotóxicos', 'Orgânico');
INSERT INTO tb_categorias (tipo, descricao, origem) VALUES ('Temperos', 'Ervas e temperos', 'Nacional');


INSERT INTO tb_produtos (nome, preco, quantidade, unidade, categoria_id) VALUES ('Maçã', 8.00, 100, 'kg', 1);
INSERT INTO tb_produtos (nome, preco, quantidade, unidade, categoria_id) VALUES ('Banana', 6.00, 120, 'kg', 1);
INSERT INTO tb_produtos (nome, preco, quantidade, unidade, categoria_id) VALUES ('Alface', 4.50, 80, 'un', 2);
INSERT INTO tb_produtos (nome, preco, quantidade, unidade, categoria_id) VALUES ('Cenoura', 5.00, 90, 'kg', 3);
INSERT INTO tb_produtos (nome, preco, quantidade, unidade, categoria_id) VALUES ('Tomate Orgânico', 12.00, 70, 'kg', 4);
INSERT INTO tb_produtos (nome, preco, quantidade, unidade, categoria_id) VALUES ('Cebola', 7.00, 100, 'kg', 3);
INSERT INTO tb_produtos (nome, preco, quantidade, unidade, categoria_id) VALUES ('Coentro', 3.00, 50, 'un', 5);
INSERT INTO tb_produtos (nome, preco, quantidade, unidade, categoria_id) VALUES ('Couve', 5.50, 60, 'un', 2);

UPDATE tb_produtos SET preco = 150.00 WHERE id = 1;
UPDATE tb_produtos SET preco = 50.00 WHERE id = 4;
UPDATE tb_produtos SET preco = 65.00 WHERE id = 5;

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- (              ver informaçoes de produtos + categorias                                          )   -> (Junte as duas tabelas onde o categoria_id do produto seja igual ao id da categoria                          
SELECT nome, preco, quantidade, unidade, categoria_id, tb_categorias.tipo, tb_categorias.descricao, tb_categorias.origem FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- (              ver informaçoes de produtos + categorias                                          )   + (Junte as duas tabelas onde o categoria_id do produto seja igual ao id da categoria) + (Quero apenas os produtos cuja categoria seja ‘Higiene’)
SELECT nome, preco, quantidade, unidade, categoria_id, tb_categorias.tipo, tb_categorias.descricao, tb_categorias.origem FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.tipo = "temperos";

