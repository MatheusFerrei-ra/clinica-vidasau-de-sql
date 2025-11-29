CREATE TABLE especialidade (
    id_especialidade INTEGER PRIMARY KEY,
    nome_especialidade VARCHAR(120) NOT NULL
);

CREATE TABLE convenio (
    id_convenio INTEGER PRIMARY KEY,
    nome_convenio VARCHAR(120) NOT NULL,
    tipo_plano VARCHAR(50) NOT NULL
);

CREATE TABLE sala_atendimento (
    id_sala INTEGER PRIMARY KEY,
    descricao VARCHAR(120) NOT NULL,
    andar INTEGER NOT NULL
);

CREATE TABLE medico (
    id_medico INTEGER PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    crm VARCHAR(20) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    id_especialidade INTEGER NOT NULL,
    FOREIGN KEY (id_especialidade) REFERENCES especialidade(id_especialidade)
);

CREATE TABLE paciente (
    id_paciente INTEGER PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(20) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    id_convenio INTEGER,
    FOREIGN KEY (id_convenio) REFERENCES convenio(id_convenio)
);

CREATE TABLE consulta (
    id_consulta INTEGER PRIMARY KEY,
    data_hora TIMESTAMP NOT NULL,
    status VARCHAR(20) NOT NULL,
    tipo_atendimento VARCHAR(50) NOT NULL,
    valor NUMERIC(10,2),
    id_paciente INTEGER NOT NULL,
    id_medico INTEGER NOT NULL,
    id_sala INTEGER NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medico(id_medico),
    FOREIGN KEY (id_sala) REFERENCES sala_atendimento(id_sala)
);
