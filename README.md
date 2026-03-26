📊 Projetos de Banco de Dados com MySQL

Este repositório contém três projetos práticos desenvolvidos para estudo de banco de dados utilizando o MySQL Workbench.

Os projetos simulam cenários reais: e-commerce, sistema escolar e gestão de recursos humanos.

🛠 Tecnologias utilizadas
MySQL
MySQL Workbench

📁 Estrutura do repositório
📦 banco-de-dados
 ┣ 📂 mercado-livre
 ┃ ┣ 📄 create.sql
 ┃ ┣ 📄 insert.sql
 ┃ ┗ 📄 queries.sql

 
 ┣ 📂 escola
 ┃ ┣ 📄 create.sql
 ┃ ┣ 📄 insert.sql
 ┃ ┗ 📄 queries.sql
 
 
 ┗ 📂 rh
 ┣ 📄 create.sql
 ┣ 📄 insert.sql
 ┗ 📄 queries.sql

🛒 Projeto 1: Sistema de Produtos (Mercado Livre)
Banco de dados: db_mercado_livre : simula o cadastro e gerenciamento de produtos de um e-commerce.

Funcionalidades: Cadastro de produtos, Consulta por faixa de preço e Atualização de descrição.
Estrutura da tabela:
id (BIGINT)
nome (VARCHAR)
descricao (VARCHAR)
preco (DECIMAL)
estoque (INT)

🎓 Projeto 2: Registro Escolar
Banco de dados: db_registro_escolar: Sistema simples para gerenciamento de estudantes.

Funcionalidades: Cadastro de alunos, Consulta por desempenho (nota) e Atualização de turma.
Estrutura da tabela:
id (BIGINT)
nome (VARCHAR)
data_nascimento (DATE)
turma (VARCHAR)
nota_final (DECIMAL)
ativo (BOOLEAN)

👥 Projeto 3: Sistema de RH
Banco de dados: db_rhservicos : simula o controle de colaboradores em uma empresa.

Funcionalidades: Cadastro de colaboradores, Consulta por salário e Atualização de dados.
Estrutura da tabela:
id (BIGINT)
nome (VARCHAR)
cpf (VARCHAR)
cargo (VARCHAR)
salario (DECIMAL)
data_admissao (DATE)
ativo (BOOLEAN)
🚀 Como executar os projetos
Abra o MySQL Workbench
Execute os arquivos na seguinte ordem:

🧠 Conceitos praticados
CREATE DATABASE
CREATE TABLE
INSERT INTO
SELECT com WHERE
UPDATE
Organização de scripts SQL
Modelagem básica de dados

📌 Objetivo: fortalecer a base em banco de dados, compreendendo como os dados são estruturados, organizados e manipulados, preparando para o desenvolvimento backend.

✨ Próximos passos
Implementar relacionamentos (FOREIGN KEY)
Criar consultas com JOIN
Evoluir para um sistema mais completo
👩‍💻 Autor: Alice de Oliveira Tolosa
