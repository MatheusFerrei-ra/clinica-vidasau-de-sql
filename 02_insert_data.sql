-- Inserindo especialidades
INSERT INTO especialidade (id_especialidade, nome_especialidade) VALUES
(1, 'Clínico Geral'),
(2, 'Cardiologia');

-- Inserindo convênios
INSERT INTO convenio (id_convenio, nome_convenio, tipo_plano) VALUES
(1, 'Unimed', 'Premium'),
(2, 'Cassi', 'Básico');

-- Inserindo salas
INSERT INTO sala_atendimento (id_sala, descricao, andar) VALUES
(1, 'Sala 101', 1),
(2, 'Sala 202', 2);

-- Inserindo médicos
INSERT INTO medico (id_medico, nome, crm, telefone, id_especialidade) VALUES
(1, 'Dr. Carlos Silva', 'CRM1234', '(41) 91234-5678', 1),
(2, 'Dra. Ana Souza', 'CRM5678', '(41) 98888-2222', 2);

-- Inserindo pacientes
INSERT INTO paciente (id_paciente, nome, cpf, data_nascimento, telefone, endereco, id_convenio) VALUES
(1, 'João Santos', '12345678900', '1990-05-10', '(41) 91234-0000', 'Rua A, 123', 1),
(2, 'Maria Oliveira', '98765432100', '1985-03-22', '(41) 98800-1111', 'Rua B, 456', 2);

-- Inserindo consultas
INSERT INTO consulta (id_consulta, data_hora, status, tipo_atendimento, valor, id_paciente, id_medico, id_sala)
VALUES
(1, '2025-01-15 10:00', 'Agendada', 'Particular', 200.00, 1, 1, 1),
(2, '2025-01-16 14:00', 'Agendada', 'Convênio', 0.00, 2, 2, 2);
