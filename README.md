# clinica-vidasau-de-sql
Scripts SQL do projeto da clínica Vida+Saúde.


🏥 Projeto SQL — Clínica Vida+Saúde

Scripts SQL desenvolvidos para o sistema de gerenciamento da clínica médica popular Vida+Saúde, como parte das atividades práticas da disciplina de Banco de Dados.

Este repositório contém a implementação completa do banco de dados:
✔ Modelo Lógico
✔ Criação das Tabelas
✔ Inserção de Dados
✔ Consultas SQL
✔ Atualizações e Exclusões
✔ Organização dos arquivos em scripts independentes

📁 Estrutura dos Arquivos
Arquivo	Descrição
01_create_tables.sql	Criação das tabelas, chaves primárias, estrangeiras e integridade referencial.
02_insert_data.sql	Povoa o banco com registros de pacientes, médicos, salas, convênios e consultas.
03_queries.sql	Consultas SQL (SELECT) com filtros, ordenação e JOINs.
04_update_delete.sql	Exemplos de UPDATE e DELETE com condições.
🏗 Tecnologias Utilizadas

PostgreSQL 15+

pgAdmin 4

SQL ANSI

Git e GitHub

📌 Como Executar os Scripts

Abra o pgAdmin 4

Crie o banco de dados:

CREATE DATABASE clinica_vidasaude;


Execute os scripts na ordem abaixo:

1️⃣ Criar tabelas
01_create_tables.sql

2️⃣ Inserir dados
02_insert_data.sql

3️⃣ Consultas
03_queries.sql

4️⃣ Atualizações e exclusões
04_update_delete.sql

🔍 Exemplo de Consultas (SELECT)
SELECT * FROM medico;

SELECT * FROM consulta WHERE id_medico = 1;

SELECT nome FROM paciente ORDER BY nome ASC;

SELECT 
    c.id_consulta,
    c.data_hora,
    c.status,
    p.nome AS paciente,
    m.nome AS medico
FROM consulta c
JOIN paciente p ON p.id_paciente = c.id_paciente
JOIN medico m ON m.id_medico = c.id_medico;

✏️ Exemplo de UPDATE e DELETE
UPDATE consulta
SET status = 'Realizada'
WHERE id_consulta = 1;

DELETE FROM paciente
WHERE id_paciente = 2;

📄 Objetivo da Atividade

Implementar um banco de dados completo aplicando:

Normalização até 3FN

Criação do Modelo Lógico e Físico

Aplicação de integridade referencial

Uso de comandos DML (INSERT, SELECT, UPDATE, DELETE)

Versionamento no GitHub

👨‍💻 Autor

Matheus Ferreira
Repositório: https://github.com/MatheusFerrei-ra/clinica-vidasau-de-sql
