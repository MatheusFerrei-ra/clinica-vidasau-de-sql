-- =========================================
-- 04_update_delete.sql
-- Atualizações e exclusões do projeto Clínica Vida+Saúde
-- =========================================

-------------------------
-- 👨‍⚕️ UPDATEs
-------------------------

-- 1) Atualizar o telefone de um paciente
UPDATE paciente
SET telefone = '(41) 95555-2222'
WHERE id_paciente = 1;

-- 2) Atualizar o status de uma consulta
UPDATE consulta
SET status = 'Concluída'
WHERE id_consulta = 1;

-- 3) Atualizar o plano de um convênio
UPDATE convenio
SET tipo_plano = 'Premium'
WHERE id_convenio = 1;


-------------------------
-- 🗑️ DELETEs
-------------------------

-- 1) Apagar uma consulta específica
DELETE FROM consulta
WHERE id_consulta = 2;

-- 2) Apagar um paciente sem consultas
DELETE FROM paciente
WHERE id_paciente = 3;

-- 3) Apagar uma sala de atendimento não utilizada
DELETE FROM sala_atendimento
WHERE id_sala = 3;
