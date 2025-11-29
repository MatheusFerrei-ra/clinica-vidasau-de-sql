-- SELECT 1: Lista todos os médicos
SELECT * FROM medico;

-- SELECT 2: Consultas do médico 1
SELECT * FROM consulta 
WHERE id_medico = 1;

-- SELECT 3: Pacientes ordenados por nome
SELECT * FROM paciente 
ORDER BY nome ASC;

-- SELECT 4: JOIN completo consulta + paciente + medico
SELECT
    c.id_consulta,
    c.data_hora,
    c.status,
    p.nome AS paciente,
    m.nome AS medico
FROM consulta c
JOIN paciente p ON p.id_paciente = c.id_paciente
JOIN medico m ON m.id_medico = c.id_medico;

-- UPDATE 1: Atualiza status
UPDATE consulta
SET status = 'Realizada'
WHERE id_consulta = 1;

-- UPDATE 2: Muda telefone do paciente
UPDATE paciente
SET telefone = '(41) 90000-1234'
WHERE id_paciente = 1;

-- UPDATE 3: Muda sala de atendimento
UPDATE consulta
SET id_sala = 2
WHERE id_consulta = 1;

-- DELETE 1: Remove uma consulta
DELETE FROM consulta
WHERE id_consulta = 2;

-- DELETE 2: Remove paciente (se permitido pela FK)
DELETE FROM paciente
WHERE id_paciente = 2;

-- DELETE 3: Remove médico (se permitido pela FK)
DELETE FROM medico
WHERE id_medico = 2;
