# selecionar todos os dados de uma tabela
# π cpf, nome, data_nascimento, fk_endereco(pessoa)
SELECT * FROM clinica_psiquiatra.pessoa;

# selecionar um subconjunto de atributos de uma tabela
# π cpf, nome (pessoa)
SELECT cpf, nome FROM clinica_psiquiatra.pessoa;

# selecionar dados de uma tabela mediante alguma condição
# π cpf, nome, data_nascimento, fk_endereco (σ data_nascimento>'2020/01/01' (pessoa))
SELECT * FROM clinica_psiquiatra.pessoa AS pessoa WHERE pessoa.data_nascimento>'2000/01/01';

# realizar seleção de dados sem apresentar duplicadas
# π salario (funcionario)
# π já elimina duplicata
SELECT DISTINCT salario FROM clinica_psiquiatra.funcionario;

# realizar consulta de seleção-projeção-junção
# π cpf, nome (σ data_nascimento<'2000/01/01' (FUNCIONARIO ⋈ fk_pessoa_cpf=cpf PESSOA))
SELECT cpf, nome FROM clinica_psiquiatra.pessoa, clinica_psiquiatra.funcionario WHERE data_nascimento <'2000/01/01' and fk_pessoa_cpf=cpf;

# atribuir apelidos
# π cpf, nome (σ data_nascimento<'2000/01/01' (ρf(FUNCIONARIO) ⋈ fk_pessoa_cpf=cpf ρp(PESSOA)))
SELECT cpf, nome FROM clinica_psiquiatra.pessoa AS p, clinica_psiquiatra.funcionario AS f WHERE p.data_nascimento <'2000/01/01' and f.fk_pessoa_cpf=p.cpf;

# aplicar união
# π fk_funcionario_cpf (psiquiatra) ∪ π fk_pessoa_cpf (paciente)
SELECT fk_funcionario_cpf FROM clinica_psiquiatra.psiquiatra UNION DISTINCT SELECT fk_pessoa_cpf FROM clinica_psiquiatra.paciente;

# aplicar interseção
# π fk_funcionario_cpf (psiquiatra ∩ pessoa)
SELECT DISTINCT fk_funcionario_cpf FROM clinica_psiquiatra.psiquiatra AS psi INNER JOIN clinica_psiquiatra.pessoa AS pes ON psi.fk_funcionario_cpf = pes.cpf;

# aplicar diferença
# π cpf, nome (pessoa - recepcionista)
SELECT cpf, nome FROM clinica_psiquiatra.pessoa AS p LEFT JOIN clinica_psiquiatra.recepcionista AS r ON p.cpf = r.fk_funcionario_cpf WHERE r.fk_funcionario_cpf IS NULL;

# aplicar produto cartesiano
# π fk_pessoa_cpf, alergia, plano_saude, fk_responsavel_cpf, fk_pessoa_cpf, salario, fk_supervisor_cpf (paciente x funcionario)
SELECT * FROM clinica_psiquiatra.paciente CROSS JOIN clinica_psiquiatra.funcionario;

# realizar seleção sob condição que envolva outra seleção
# π cpf, nome (σ data_nascimento<'2000/01/01' ρs1(π cpf, nome, data_nascimento (σ cpf>30000000000 ρs2(pessoa))))
SELECT cpf, nome FROM (SELECT cpf, nome, data_nascimento FROM clinica_psiquiatra.pessoa AS s2 Where s2.cpf>'30000000000') AS s1 WHERE s1.data_nascimento<'2000/01/01';

# consultar valores de atributos que iniciem por algum termo
SELECT * FROM clinica_psiquiatra.pessoa WHERE cpf LIKE '9%';

# ordenar resultados de consultas de forma ascendente
SELECT * FROM clinica_psiquiatra.pessoa ORDER BY fk_endereco ASC;

# utilizar função de agregação
SELECT SUM(Salario) AS Soma_Salario, AVG (Salario) AS Media_Salarial FROM clinica_psiquiatra.funcionario;

# realizar agrupamento de resultado de consulta
SELECT Salario, COUNT(*) FROM clinica_psiquiatra.funcionario GROUP BY Salario;

# criar regra apenas para consultas do banco criado
CREATE ROLE only_select;
GRANT SELECT ON clinica_psiquiatra.funcionario TO 'only_select';

# criar regra para execução de comandos DML e DQL
CREATE ROLE only_dml_dql;
GRANT SELECT, INSERT, UPDATE, DELETE ON clinica_psiquiatra.pessoa TO 'only_dml_dql';

# criar regra para execução de comandos DDL
CREATE ROLE only_ddl;
GRANT CREATE, DROP, ALTER ON clinica_psiquiatra.pessoa TO 'only_ddl';

# criar usuário que possua a regra padrão para consulta (criada anteriormente)
CREATE USER 'felipe123'@'localhost' IDENTIFIED BY 'felipe123';
GRANT 'only_select' TO 'felipe123'@'localhost';

# criar usuário que possua a regra padrão para comandos DML e DQL (criada anteriormente)
CREATE USER 'vitu123'@'localhost' IDENTIFIED BY 'vitu123';
GRANT 'only_dml_dql' TO 'vitu123'@'localhost';

# criar usuário que possua a regra padrão para comandos DDL (criada anteriormente)
CREATE USER 'pedruz123'@'localhost' IDENTIFIED BY 'pedruz123';
GRANT 'only_ddl' TO 'pedruz123'@'localhost';

# criar uma transação única
START TRANSACTION;
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('11111111111', 'Lucas Riquelme', STR_TO_DATE('02/02/1992', '%d/%m/%Y'), 15);
SAVEPOINT primeiro_insert;
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('22222222222', 'Roberto Riquelme', STR_TO_DATE('11/08/1992', '%d/%m/%Y'), 15);
ROLLBACK TO primeiro_insert;
COMMIT;

# criar uma view a partir de mais de uma tabela
CREATE VIEW getPaciente AS SELECT * FROM clinica_psiquiatra.paciente, clinica_psiquiatra.pessoa, clinica_psiquiatra.endereco WHERE fk_pessoa_cpf = cpf and fk_endereco = id;

# criar uma regra para consulta apenas na visualização criada
CREATE ROLE select_view_getPaciente;
GRANT SELECT ON clinica_psiquiatra.getPaciente TO 'select_view_getPaciente';

# criar usuário que possua a regra padrão para consulta da view (criadas anteriormente)
CREATE USER 'lucas999'@'localhost' IDENTIFIED BY 'senha123';
GRANT 'select_view_getPaciente' TO 'lucas999'@'localhost';
SET DEFAULT ROLE 'select_view_getPaciente' TO 'lucas999'@'localhost';
