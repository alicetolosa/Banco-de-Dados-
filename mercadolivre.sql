CREATE DATABASE db_mercado_livre;
USE db_mercado_livre;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(255),
preco DECIMAL(10,2) NOT NULL,
estoque INT,

PRIMARY KEY (id)

);

INSERT INTO tb_produtos (nome,descricao,preco,estoque) VALUES ('Notebook', 'Intel i5, 8GB RAM, SSD 256GB', '3500.00', 10);
INSERT INTO tb_produtos (nome,descricao,preco,estoque) VALUES ('Escova de Dente', 'MAM Baby', '35.00', 80);
INSERT INTO tb_produtos (nome,descricao,preco,estoque) VALUES ('Babador em Silicone', 'Com Pega-Migalhas', '21.43', 15);
INSERT INTO tb_produtos (nome,descricao,preco,estoque) VALUES ('Lavatorio de Pia', 'Branco Sintetico', '296.00', 5);
INSERT INTO tb_produtos (nome,descricao,preco,estoque) VALUES ('Oleo Capilar', 'Pro-v Miracles 95ml', '43.29', 36);
INSERT INTO tb_produtos (nome,descricao,preco,estoque) VALUES ('Prateleira de Canto', 'Ergonômica, ajuste de altura', '1200', 8);
INSERT INTO tb_produtos (nome,descricao,preco,estoque) VALUES ('Cadeira Gamer', '7006 Auldar B', '24.00', 2);
INSERT INTO tb_produtos (nome,descricao,preco,estoque) VALUES ('Lancôme Perfume Feminino', 'Baunilha, Aroma de Felicidade ', '954.00', 5);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET descricao = 'Avent' WHERE id = 2;


SELECT * FROM tb_produtos; 