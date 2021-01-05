/*Cuidado com as datas em MySQL*/
 
INSERT INTO Endereco(cep, numero, complemento) VALUES ('55089040', 31, 'Na esquina com a UFPE');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('92891029', 19, 'Próximo ao bompreço');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('61414332', 51, 'Em frente à igrejinha');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('90643895', 25, 'Próximo à black180');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('98340953', 13, 'Em frente a caixa lotérica');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('53487534', 33, 'Próximo aos correios');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('90348985', 72, 'Na esquina do frigorífico');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('49283423', 101, 'Em frente a escola EPEC');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('06585239', 398, 'Em frente à praça puxa peito');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('58277824', 336, 'Próximo ao Lago Dantas');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('31827831', 549, 'Próximo à UFPE');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('42387423', 222, 'Perto da UFPE');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('13298954', 999, 'Próximo sindicato');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('14234278', 634, 'Em frente a lan house Wifi Bom');
INSERT INTO Endereco(cep, numero, complemento) VALUES ('11111118', 312, 'Prédio 5 Bloco A');
 
 
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('59737126978', 'Pimpolho Pompeu da Silva', STR_TO_DATE('08/09/2013', '%d/%m/%Y'), 1);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('92884301021', 'Pampilho Pompeu Pereira', STR_TO_DATE('08/09/2014', '%d/%m/%Y'), 1);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('12345678910', 'Pempalho Pompeu Poços', STR_TO_DATE('08/09/2015', '%d/%m/%Y'), 1);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('36452345649', 'Assistencio Joseildo Pedrosa', STR_TO_DATE('10/10/2003', '%d/%m/%Y'), 4);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('97575264561', 'Alura da Justa Brasil', STR_TO_DATE('15/09/1984', '%d/%m/%Y'), 5);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('81789145657', 'Tito Tavares Tertuliano', STR_TO_DATE('15/04/1987', '%d/%m/%Y'), 6);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('78145576578', 'Michael Fearmer', STR_TO_DATE('23/01/1997', '%d/%m/%Y'), 7);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('06548521452', 'Jonatas Chumber', STR_TO_DATE('22/05/1985', '%d/%m/%Y'), 8);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('98745854785', 'Maria Kruker', STR_TO_DATE('12/11/1955', '%d/%m/%Y'), 9);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('54326523412', 'Pedro Rafael', STR_TO_DATE('29/09/1991', '%d/%m/%Y'), 10);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('86764553432', 'Joana Darc', STR_TO_DATE('21/07/1990', '%d/%m/%Y'), 11);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('32443554687', 'Gabriela Jaqueira', STR_TO_DATE('02/02/1962', '%d/%m/%Y'), 12);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('36957498710', 'Silvano Sales', STR_TO_DATE('02/02/1962', '%d/%m/%Y'), 13);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('34798754978', 'Gilberto Gil', STR_TO_DATE('02/02/1962', '%d/%m/%Y'), 14);
INSERT INTO Pessoa(cpf, nome, data_nascimento, fk_endereco) VALUES ('23179512744', 'Antônio Jobim', STR_TO_DATE('02/02/1962', '%d/%m/%Y'), 15);
 
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('59737126978', '+5581932217891');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('59737126978', '+5423423217891');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('92884301021', '+5581964565481');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('36452345649', '+5581953453791');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('12345678910', '+5581932645591');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('97575264561', '+5581932645651');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('81789145657', '+5584234234591');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('78145576578', '+5575675675691');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('06548521452', '+5581956725641');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('98745854785', '+5345874239808');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('54326523412', '+5569488947878');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('86764553432', '+5581938888891');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('32443554687', '+5581939997891');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('36957498710', '+5581932223891');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('34798754978', '+5581932876891');
INSERT INTO Telefone (fk_pessoa_cpf, numero) VALUES ('23179512744', '+5581932233891');
 
 
INSERT INTO Medicamento (codigo_anvisa, nome) VALUES ('01187944688', 'Hidroxicloroquina');
INSERT INTO Medicamento (codigo_anvisa, nome) VALUES ('01187944689', 'Hidroxiclorofila');
INSERT INTO Medicamento (codigo_anvisa, nome) VALUES ('1', 'Chá de boldo');
 
INSERT INTO Funcionario(fk_pessoa_cpf, salario, fk_supervisor_cpf) VALUES ('59737126978', 5045.00, '59737126978');
/* Pimpolho é superior do Pimpolho */
INSERT INTO Funcionario(fk_pessoa_cpf, salario, fk_supervisor_cpf) VALUES ('36452345649', 5045.00, '59737126978');
/* Assistêncio Joseildo*/
INSERT INTO Funcionario(fk_pessoa_cpf, salario, fk_supervisor_cpf) VALUES ('81789145657', 5045.00, '59737126978');
/* Tito Tavares */
INSERT INTO Funcionario(fk_pessoa_cpf, salario, fk_supervisor_cpf) VALUES ('97575264561', 1345.00, '59737126978');
/* Alura da Justa */
INSERT INTO Funcionario(fk_pessoa_cpf, salario, fk_supervisor_cpf) VALUES ('23179512744', 3045.00, '59737126978');
/* Antônio Jobim */
INSERT INTO Funcionario(fk_pessoa_cpf, salario, fk_supervisor_cpf) VALUES ('36957498710', 2500.00, '59737126978');
/* Silvano Sales */
INSERT INTO Funcionario(fk_pessoa_cpf, salario, fk_supervisor_cpf) VALUES ('32443554687', 2100.00, '59737126978');
/* Gabriela Jaqueira */
INSERT INTO Funcionario(fk_pessoa_cpf, salario, fk_supervisor_cpf) VALUES ('34798754978', 3079.00, '59737126978');
/* Gilberto Gil */
INSERT INTO Funcionario(fk_pessoa_cpf, salario, fk_supervisor_cpf) VALUES ('86764553432', 4000.00, '59737126978');
/* Joana Darc */
 
INSERT INTO Recepcionista(fk_funcionario_cpf, ramal) VALUES ('36452345649', '0800');
/* Assistencio */
INSERT INTO Recepcionista(fk_funcionario_cpf, ramal) VALUES ('81789145657', '1337');
/* Tito Tavares */
INSERT INTO Recepcionista(fk_funcionario_cpf, ramal) VALUES ('97575264561', '5843');
/* Alura da Justa */
 
INSERT INTO Psiquiatra (fk_funcionario_cpf, crm) VALUES ('59737126978', '6478PE');
/* Pimpolho é Psiquiatra */
INSERT INTO Psiquiatra (fk_funcionario_cpf, crm) VALUES ('23179512744', '4831RJ');
/* Antônio Jobim é Psiquiatra */
INSERT INTO Psiquiatra (fk_funcionario_cpf, crm) VALUES ('36957498710', '7439PB');
/* Silvano Sales é Psiquiatra */
 
INSERT INTO Terceirizado (fk_funcionario_cpf, data_fim_contrato) VALUES ('32443554687',STR_TO_DATE('08/09/2025', '%d/%m/%Y'));
/* Gabriela Jaqueira */
INSERT INTO Terceirizado (fk_funcionario_cpf, data_fim_contrato) VALUES ('34798754978', STR_TO_DATE('08/09/2024', '%d/%m/%Y'));
/* Gilberto Gil */
INSERT INTO Terceirizado (fk_funcionario_cpf, data_fim_contrato) VALUES ('86764553432', STR_TO_DATE('08/09/2023', '%d/%m/%Y'));
/* Joana Darc */
 
 
INSERT INTO Paciente(fk_pessoa_cpf, alergia, plano_saude, fk_responsavel_cpf) VALUES ('81789145657', 'Camarao, amendoim, lactose', 'Unimed Cidade Universitária', '97575264561');
/* Responsavel por Tito é a Alura */
INSERT INTO Paciente(fk_pessoa_cpf, alergia, plano_saude, fk_responsavel_cpf) VALUES ('54326523412', 'Paracetamol, Anastrozol', 'Cassi', '97575264561');
/* Responsavel por Pedro Rafael é a Alura */
INSERT INTO Paciente(fk_pessoa_cpf, alergia, fk_responsavel_cpf) VALUES ('98745854785', 'Asma, mofo', '98745854785');
/* Responsavel por Maria Krueker é ela mesma */
 
INSERT INTO Consulta (fk_paciente_cpf, data_hora, fk_psiquiatra_cpf, fk_recepcionista_cpf) VALUES ('81789145657', STR_TO_DATE( '29/08/2016 08:59', '%d/%m/%Y %H:%i' ), '59737126978', '97575264561');
/* Tito vai marcar consulta com Pimpolho, Alura vai agendar  */
INSERT INTO Consulta (fk_paciente_cpf, data_hora, fk_psiquiatra_cpf, fk_recepcionista_cpf) VALUES ('81789145657', STR_TO_DATE( '30/08/2016 09:30', '%d/%m/%Y %H:%i' ), '59737126978', '97575264561');
/* Tito vai marcar consulta com Pimpolho, Alura vai agendar  */
INSERT INTO Consulta (fk_paciente_cpf, data_hora, fk_psiquiatra_cpf, fk_recepcionista_cpf) VALUES ('54326523412', STR_TO_DATE( '01/11/2020 11:59', '%d/%m/%Y %H:%i' ), '23179512744', '36452345649');
/* Pedro Rafael vai marcar consulta com Antônio Jobim, Assistencio vai agendar  */
 
# INSERT INTO Paciente_Funcionario (desconto, fk_paciente_cpf, fk_funcionario_cpf) VALUES (90, '97575264561', '97575264561');
/* Alura é internada com 90% de desconto */
 
INSERT INTO Receita (recomendacao) VALUES ('1 comprimido/24hrs');
INSERT INTO Receita (recomendacao) VALUES ('24 comprimidos/1hr');
INSERT INTO Receita (recomendacao) VALUES ('250ml 2x ao dia');

INSERT INTO Receita_Medicamento (fk_receita_id, fk_medicamento_codigo_anvisa) VALUES (1, '01187944688');
INSERT INTO Receita_Medicamento (fk_receita_id, fk_medicamento_codigo_anvisa) VALUES (2, '01187944689');
INSERT INTO Receita_Medicamento (fk_receita_id, fk_medicamento_codigo_anvisa) VALUES (3, '1');
 
INSERT INTO Paciente_Psiquiatra_Receita(fk_paciente_cpf, fk_psiquiatra_cpf, fk_receita_id, data_hora) VALUES ('81789145657', '59737126978', 1, STR_TO_DATE('29/08/2016 08:59', '%d/%m/%Y %H:%i'));
INSERT INTO Paciente_Psiquiatra_Receita(fk_paciente_cpf, fk_psiquiatra_cpf, fk_receita_id, data_hora) VALUES ('81789145657', '59737126978', 2, STR_TO_DATE('30/08/2016 09:30', '%d/%m/%Y %H:%i'));
INSERT INTO Paciente_Psiquiatra_Receita(fk_paciente_cpf, fk_psiquiatra_cpf, fk_receita_id, data_hora) VALUES ('54326523412', '23179512744', 3, STR_TO_DATE('01/11/2020 11:59', '%d/%m/%Y %H:%i'));
 
INSERT INTO Horario(dia_semana, horario_entrada, horario_saida, id) VALUES ('MON', STR_TO_DATE('07:00', '%H:%i'), STR_TO_DATE('17:00', '%H:%i'), 1);
INSERT INTO Horario(dia_semana, horario_entrada, horario_saida, id) VALUES ('TUE', STR_TO_DATE('07:00', '%H:%i'), STR_TO_DATE('17:00', '%H:%i'), 2);
INSERT INTO Horario(dia_semana, horario_entrada, horario_saida, id) VALUES ('WED', STR_TO_DATE('07:00', '%H:%i'), STR_TO_DATE('17:00', '%H:%i'), 3);
INSERT INTO Horario(dia_semana, horario_entrada, horario_saida, id) VALUES ('THU', STR_TO_DATE('07:00', '%H:%i'), STR_TO_DATE('17:00', '%H:%i'), 4);
INSERT INTO Horario(dia_semana, horario_entrada, horario_saida, id) VALUES ('FRI', STR_TO_DATE('07:00', '%H:%i'), STR_TO_DATE('17:00', '%H:%i'), 5);
 
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('59737126978', 1);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('59737126978', 2);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('59737126978', 3);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('59737126978', 4);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('59737126978', 5);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('36452345649', 2);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('36452345649', 4);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('23179512744', 1);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('32443554687', 1);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('34798754978', 1);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('36957498710', 1);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('86764553432', 1);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('81789145657', 1);
INSERT INTO Funcionario_Horario (fk_funcionario_cpf, fk_horario_id) VALUES ('97575264561', 1);

INSERT INTO Paciente_funcionario(desconto, fk_funcionario_paciente_cpf) VALUES (0.9, '32443554687');
INSERT INTO Paciente_funcionario(desconto, fk_funcionario_paciente_cpf) VALUES (0.85, '97575264561');
INSERT INTO Paciente_funcionario(desconto, fk_funcionario_paciente_cpf) VALUES (0.6, '81789145657');