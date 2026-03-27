CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(100)  NOT NULL, 
    descricao VARCHAR(255), 
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT, 
    nome_produto VARCHAR(100) NOT NULL, 
    preco DECIMAL (10,2) NOT NULL,
    estoque INT,
    marca VARCHAR(100),
    categoria_id BIGINT,
    PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (nome, descricao) VALUES ('Medicamentos', 'Remédios em geral');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Higiene', 'Produtos de higiene pessoal');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Beleza', 'Cosméticos e cuidados com a pele');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Infantil', 'Produtos para bebês e crianças');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Vitaminas', 'Suplementos e vitaminas');

INSERT INTO tb_produtos (nome_produto, preco, estoque, marca, categoria_id) VALUES ('Paracetamol', 12.50, 100, 'Generico', 1);
INSERT INTO tb_produtos (nome_produto, preco, estoque, marca, categoria_id) VALUES('Ibuprofeno', 25.00, 80, 'Advil', 1);
INSERT INTO tb_produtos (nome_produto, preco, estoque, marca, categoria_id) VALUES('Shampoo', 89.50, 50, 'Pantene', 2);
INSERT INTO tb_produtos (nome_produto, preco, estoque, marca, categoria_id) VALUES('Sabonete', 4.99, 200, 'Dove', 2);
INSERT INTO tb_produtos (nome_produto, preco, estoque, marca, categoria_id) VALUES('Protetor Solar', 75.00, 40, 'Nivea', 3);
INSERT INTO tb_produtos (nome_produto, preco, estoque, marca, categoria_id) VALUES('Fralda', 140.00, 70, 'Pampers', 4);
INSERT INTO tb_produtos (nome_produto, preco, estoque, marca, categoria_id) VALUES('Vitamina C', 55.00, 60, 'Cebion', 5);
INSERT INTO tb_produtos (nome_produto, preco, estoque, marca, categoria_id) VALUES('Pomada Infantil', 22.00, 30, 'Bepantol', 4);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

-- (              ver informaçoes de produtos + categorias                                          )   -> (Junte as duas tabelas onde o categoria_id do produto seja igual ao id da categoria                          
SELECT nome_produto, preco, estoque, marca, categoria_id, tb_categorias.nome, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- (              ver informaçoes de produtos + categorias                                          )   + (Junte as duas tabelas onde o categoria_id do produto seja igual ao id da categoria) + (Quero apenas os produtos cuja categoria seja ‘Higiene’)
SELECT nome_produto, preco, estoque, marca, categoria_id, tb_categorias.nome, tb_categorias.descricao FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Higiene";
