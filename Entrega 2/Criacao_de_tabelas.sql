
/* Grupo: Felipe Benjamin, Lucas Mendonca, Pedro José e Vitor Sousa, Tema: Hospital Psiquiátrico */
/*


VARCHAR(256): Coisas que podem vir a ser um texto grande
VARCHAR(128): Textos relativamente médios
VARCHAR(32): Textos relativamente pequenos
VARCHAR(16): Textos curtos
VARCHAR(8): Textos curtíssimos

INTEGER GENERATED BY DEFAULT AS IDENTITY: é um incremental inteiro, isso gera um object do tipo SEQUENCE no Oracle Live SQL é equivalente ao AUTO_INCREMENT do MySQL
*/

# Criação de domínio
# CREATE DOMAIN CHAR(11) AS CHAR(11);
# CREATE DOMAIN CHAR(8) AS CHAR(8);

# Valor padrão para atributo criado
# CREATE DOMAIN VARCHAR(32) DEFAULT “SUS” AS VARCHAR(32) DEFAULT “SUS”;


# Atribuição de domínio criado

CREATE TABLE Endereco (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    cep CHAR(8) NOT NULL,
    numero INTEGER,
    complemento VARCHAR(32)
);


# validação de dados a serem inseridos
CREATE TABLE Pessoa (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(128) NOT NULL,
    data_nascimento DATE NOT NULL CHECK (data_nascimento < '2020/11/23' AND data_nascimento > '1900-01-01'),
    fk_endereco INTEGER NOT NULL,
    FOREIGN KEY (fk_endereco) REFERENCES Endereco(id) ON DELETE CASCADE
);

CREATE TABLE Paciente (
    fk_pessoa_cpf CHAR(11) PRIMARY KEY,
    alergia VARCHAR (256),
    plano_saude VARCHAR(32) DEFAULT "SUS",
    fk_responsavel_cpf CHAR(11) NOT NULL,
    FOREIGN KEY (fk_pessoa_cpf) REFERENCES Pessoa(cpf) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (fk_responsavel_cpf) REFERENCES Pessoa(cpf) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Funcionario (
    fk_pessoa_cpf CHAR(11) PRIMARY KEY,
    salario REAL NOT NULL,
    fk_supervisor_cpf CHAR(11),
    FOREIGN KEY (fk_pessoa_cpf) REFERENCES Pessoa(cpf) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (fk_supervisor_cpf) REFERENCES Funcionario(fk_pessoa_cpf) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Psiquiatra (
    fk_funcionario_cpf CHAR(11) PRIMARY KEY,
    crm VARCHAR(16) NOT NULL UNIQUE,
    FOREIGN KEY (fk_funcionario_cpf) REFERENCES Funcionario(fk_pessoa_cpf) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Receita (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    recomendacao VARCHAR(256)
);

CREATE TABLE Medicamento (
    codigo_anvisa VARCHAR(16) PRIMARY KEY,
    nome VARCHAR(32)
);

CREATE TABLE Receita_Medicamento (
    fk_receita_id INTEGER AUTO_INCREMENT,
    fk_medicamento_codigo_anvisa VARCHAR(16),
    PRIMARY KEY (fk_receita_id, fk_medicamento_codigo_anvisa),
    FOREIGN KEY (fk_receita_id) REFERENCES Receita(id),
    FOREIGN KEY (fk_medicamento_codigo_anvisa) REFERENCES Medicamento(codigo_anvisa) 
       ON UPDATE CASCADE
       ON DELETE CASCADE
);

CREATE TABLE Paciente_Psiquiatra_Receita (
    fk_paciente_cpf CHAR(11) NOT NULL,
    fk_psiquiatra_cpf CHAR(11) NOT NULL,
    fk_receita_id INTEGER NOT NULL,
    data_hora TIMESTAMP NOT NULL,
    PRIMARY KEY (fk_paciente_cpf, fk_psiquiatra_cpf, fk_receita_id, data_hora),
    FOREIGN KEY (fk_paciente_cpf) REFERENCES Paciente(fk_pessoa_cpf) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (fk_psiquiatra_cpf) REFERENCES Psiquiatra(fk_funcionario_cpf)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (fk_receita_id) REFERENCES Receita(id) ON DELETE CASCADE
);

CREATE TABLE Recepcionista (
    fk_funcionario_cpf CHAR(11) PRIMARY KEY NOT NULL,
    ramal NUMERIC,
    FOREIGN KEY (fk_funcionario_cpf) REFERENCES Funcionario(fk_pessoa_cpf) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Consulta (
    fk_paciente_cpf CHAR(11),
    data_hora TIMESTAMP,
    fk_psiquiatra_cpf CHAR(11),
    fk_recepcionista_cpf CHAR(11),
    PRIMARY KEY (fk_paciente_cpf, fk_psiquiatra_cpf, fk_recepcionista_cpf, data_hora),
    FOREIGN KEY (fk_paciente_cpf) REFERENCES Paciente(fk_pessoa_cpf) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (fk_psiquiatra_cpf) REFERENCES Psiquiatra(fk_funcionario_cpf)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (fk_recepcionista_cpf) REFERENCES Recepcionista(fk_funcionario_cpf)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Telefone (
    fk_pessoa_cpf CHAR(11),
    numero VARCHAR(14),
    FOREIGN KEY (fk_pessoa_cpf) REFERENCES Pessoa(cpf) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY(fk_pessoa_cpf, numero)
);

CREATE TABLE Horario (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dia_semana CHAR(3),
    horario_entrada TIME,
    horario_saida TIME
);

CREATE TABLE Funcionario_Horario (
    fk_funcionario_cpf CHAR(11) NOT NULL,
    fk_horario_id INTEGER NOT NULL,
    PRIMARY KEY (fk_funcionario_cpf, fk_horario_id),
    FOREIGN KEY (fk_funcionario_cpf) REFERENCES Funcionario(fk_pessoa_cpf) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (fk_horario_id) REFERENCES Horario(id) ON DELETE CASCADE
);

# Este é o nosso reticulado
CREATE TABLE Paciente_Funcionario (
    desconto REAL NOT NULL,
    fk_funcionario_paciente_cpf CHAR(11) NOT NULL,
    PRIMARY KEY (fk_funcionario_paciente_cpf),
    FOREIGN KEY (fk_funcionario_paciente_cpf) REFERENCES Funcionario(fk_pessoa_cpf) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Terceirizado (
	data_fim_contrato DATE NOT NULL,
    fk_funcionario_cpf CHAR(11) NOT NULL,
    PRIMARY KEY (data_fim_contrato, fk_funcionario_cpf),
    FOREIGN KEY (fk_funcionario_cpf) REFERENCES Funcionario(fk_pessoa_cpf) ON UPDATE CASCADE ON DELETE CASCADE
);
