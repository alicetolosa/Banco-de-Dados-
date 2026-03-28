CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    setor VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT,
    marca VARCHAR(100),
    categoria_id BIGINT,
    PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (tipo, descricao, setor) VALUES ('Hidráulica', 'Materiais para encanamento', 'Construção');
INSERT INTO tb_categorias (tipo, descricao, setor) VALUES ('Elétrica', 'Materiais elétricos', 'Construção');
INSERT INTO tb_categorias (tipo, descricao, setor) VALUES ('Ferramentas', 'Ferramentas em geral', 'Equipamentos');
INSERT INTO tb_categorias (tipo, descricao, setor) VALUES ('Acabamento', 'Materiais de acabamento', 'Construção');
INSERT INTO tb_categorias (tipo, descricao, setor) VALUES ('Pintura', 'Tintas e acessórios', 'Revestimento');

INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES ('Cano PVC', 120.00, 50, 'Tigre', 1);
INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES ('Fio Elétrico 10m', 90.00, 80, 'Sil', 2);
INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES ('Martelo', 75.00, 40, 'Tramontina', 3);
INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES ('Tinta Branca 18L', 150.00, 30, 'Suvinil', 5);
INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES ('Chave de Fenda', 35.00, 60, 'Vonder', 3);
INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES ('Cimento 50kg', 45.00, 100, 'Votorantim', 4);
INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES ('Conector Hidráulico', 25.00, 70, 'Amanco', 1);
INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES ('Cerâmica Piso', 110.00, 90, 'Portobello', 4);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- (              ver informaçoes de produtos + categorias                                          )   -> (Junte as duas tabelas onde o categoria_id do produto seja igual ao id da categoria                          
SELECT nome, preco, estoque, marca, categoria_id, tb_categorias.tipo, tb_categorias.descricao, tb_categorias.setor FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- (              ver informaçoes de produtos + categorias                                          )   + (Junte as duas tabelas onde o categoria_id do produto seja igual ao id da categoria) + (Quero apenas os produtos cuja categoria seja ‘Higiene’)
SELECT nome, preco, estoque, marca, categoria_id, tb_categorias.tipo, tb_categorias.descricao, tb_categorias.setor FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.tipo = "acabamento";
