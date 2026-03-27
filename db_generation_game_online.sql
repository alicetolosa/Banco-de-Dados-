-- Criar o banco de dados
CREATE DATABASE db_generation_game_online;

-- Usar o banco
USE db_generation_game_online;

-- Criar tabela de classes
CREATE TABLE tb_classes (
 id BIGINT AUTO_INCREMENT ,
 nome VARCHAR (100),
 descricao VARCHAR (255),
 PRIMARY KEY (id)
 );
 
 -- Alteração do nome da coluna de descrição para especialidade 
ALTER TABLE tb_classes RENAME COLUMN descricao TO especialidade;
 
ALTER TABLE tb_classes RENAME COLUMN nome TO tipo;
 
 -- Criar tabela de personagens 
CREATE TABLE tb_personagens (
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR (100) NOT NULL,
 nivel INT,
 ateque INT,
 defesa INT,
 PRIMARY KEY (id)
 );
 
-- Alteração do nome da coluna de nome p/ nome_personagem
ALTER TABLE tb_personagens RENAME COLUMN nome TO nome_personagem;
 
-- Alteração do nome da coluna de descrição para especialidade 
ALTER TABLE tb_personagens RENAME COLUMN ateque TO ataque;
 
-- Adicionar coluna de relacionamento NA TABELA DE PERSONAGEM, adicionar Classe_id
ALTER TABLE  tb_personagens ADD classe_id BIGINT; 

-- Criar relacionamento entre produtos e categorias (FOREIGN KEY)
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

-- 5 registros tb_classe
INSERT INTO tb_classes (nome, especialidade) VALUES ("Elétrico", "Ataques rápidos");
INSERT INTO tb_classes (nome, especialidade) VALUES ("Fogo", "Dano alto");
INSERT INTO tb_classes (nome, especialidade) VALUES ("Água", "Defesa equilibrada");
INSERT INTO tb_classes (nome, especialidade) VALUES ("Planta", "Regeneração");
INSERT INTO tb_classes (nome, especialidade) VALUES ("Psíquico", "Poder mental");


-- 8 registros tb_personagens
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Pikachu", 10, 120, 80, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Raichu", 12, 150, 90, 1);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Charmander", 8, 110, 70, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Charizard", 15, 200, 120, 2);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Squirtle", 9, 90, 120, 3);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Bulbasaur", 7, 85, 100, 4);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Mewtwo", 20, 300, 150, 5);
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES ("Alakazam", 18, 250, 100, 5);
 
-- Modificação do Ataque dos Personagens 
UPDATE tb_personagens SET ataque = 9400 WHERE id = 1;
UPDATE tb_personagens SET ataque = 950 WHERE id = 4;
UPDATE tb_personagens SET ataque = 5000 WHERE id = 7;

-- Mofificação da defesa dos personagens 
UPDATE tb_personagens SET defesa = 1500 WHERE id = 2;
UPDATE tb_personagens SET defesa = 2000 WHERE id = 5;
UPDATE tb_personagens SET defesa = 1050 WHERE id = 8;
 
 
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens ;

SELECT * FROM tb_personagens WHERE ataque > 2000; -- ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000; -- defesa no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; -- buscando todes os personagens que possuam a letra C no atributo nome

-- unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT nome_personagem, nivel, ataque, defesa, tb_classes.tipo, tb_classes.especialidade FROM tb_personagens  INNER JOIN tb_classes  ON tb_personagens.classe_id = tb_classes.id;

-- onde traga apenas os personagens que pertençam a uma classe específica "FOGO"
SELECT nome_personagem, nivel, ataque, defesa, tb_classes.tipo, tb_classes.especialidade FROM tb_personagens  INNER JOIN tb_classes  ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.tipo = "Fogo";
 