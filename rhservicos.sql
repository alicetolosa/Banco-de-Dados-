-- criar banco de dados
CREATE DATABASE db_rhservicos;
USE db_rhservicos;
-- DADOS DA COLUNA DA TABELA 
CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100),
cpf VARCHAR(20),
cargo VARCHAR(50),
salario DECIMAL(10,2),
data_admissao DATE,
ativo BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome,cpf,cargo,salario,data_admissao,ativo) VALUES ('Neymar Jr.', '123.456.789-01', 'Jogador', 2050.00, '2022-03-15', TRUE);
INSERT INTO tb_colaboradores(nome,cpf,cargo,salario,data_admissao,ativo) VALUES ('Anitta', '234.567.890-12', 'Cantora', 1200.00, '2021-07-10', TRUE);
INSERT INTO tb_colaboradores(nome,cpf,cargo,salario,data_admissao,ativo) VALUES ('Claudia Raia', '333.444.555-66', 'Ator', 1200.00, '2021-07-10', TRUE);
INSERT INTO tb_colaboradores(nome,cpf,cargo,salario,data_admissao,ativo) VALUES ('Leonardo DiCaprio', '345.678.901-23', 'Ator ', 7000.00, '2023-01-05', TRUE);
INSERT INTO tb_colaboradores(nome,cpf,cargo,salario,data_admissao,ativo) VALUES ('Taylor Swift', '456.789.012-34', 'Coordenadora de RH', 9500.00, '2020-09-20', FALSE);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET salario = 3000.15 WHERE id = 3;
SELECT * FROM tb_colaboradores; 