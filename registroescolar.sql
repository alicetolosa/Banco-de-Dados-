CREATE DATABASE db_registro_escolar;
USE db_registro_escolar;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    turma VARCHAR(20),
    nota_final DECIMAL(5,2),
    ativo BOOLEAN,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota_final, ativo) VALUES ('Ana Souza', '2008-05-12', '1A', 8.5, TRUE);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota_final, ativo) VALUES ('Bruno Lima', '2007-09-23', '2B', 7.0, TRUE);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota_final, ativo) VALUES ('Carla Mendes', '2009-01-15', '1A', 9.2, TRUE);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota_final, ativo) VALUES ('Diego Alves', '2006-11-30', '3C', 6.8, FALSE);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota_final, ativo) VALUES ('Eduarda Rocha', '2008-07-08', '2B', 8.0, TRUE);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota_final, ativo) VALUES ('Felipe Santos', '2007-03-19', '3C', 5.9, FALSE);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota_final, ativo) VALUES ('Gabriela Martins', '2009-12-02', '1A', 9.5, TRUE);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota_final, ativo) VALUES ('Henrique Costa', '2006-06-25', '3C', 7.3, TRUE);

SELECT * FROM tb_estudantes; 
SELECT * FROM tb_estudantes WHERE nota_final > 7.0;
SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes SET turma = '3A' WHERE id = 8;