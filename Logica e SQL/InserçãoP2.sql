use escritorio;

insert into colaborador values ('Joao Carlos da Silva','00000000000','12345678901',1000.00,'Auxiliar');
insert into colaborador values ('Jose Pereira','11111111111','98765432100',1000.00,'Auxiliar');
insert into colaborador values ('Maria Josefina Luz','77777777777','96325874155',1500.00,'Auxiliar');
insert into colaborador values ('Angela Cardoso','88888888888','14785236999',1500.00,'Auxiliar');
insert into colaborador values ('Pedro Paulo Paz','99999999999','36985214777',1000.00,'Auxiliar');
insert into colaborador values ('Maria da Rosa Santos','22222222222','12365478999',5000.00,'Advogado');
insert into colaborador values ('Luis Fernando Lima','33333333333','74185296300',5000.00,'Advogado');
insert into colaborador values ('Antonio Rodrigues','44444444444','98745632100',7000.00,'Advogado');
insert into colaborador values ('Ana Carla Almeida','55555555555','96328741000',8000.00,'Advogado');
insert into colaborador values ('Sandro Santos','66666666666','12365478900',5000.00,'Advogado');

insert into auxiliar values ('00000000000');
insert into auxiliar values ('11111111111');
insert into auxiliar values ('77777777777');
insert into auxiliar values ('88888888888');
insert into auxiliar values ('99999999999');

insert into advogado values ('RS074402','Trabalhista','22222222222');
insert into advogado values ('RS108563','Civel','33333333333');
insert into advogado values ('RS88990','Criminal','44444444444');
insert into advogado values ('RS052003','Previdenciario','55555555555');
insert into advogado values ('RS105553','Civel','66666666666');

insert into consulta values (null,'2019-06-03','15:00','Ana Amaro','51989028076','22222222222');
insert into consulta values (null,'2019-06-03','16:00','Pedro Paulo','51998886655','33333333333');
insert into consulta values (null,'2019-06-07','13:30','Silvia Sanhudo','519825821514','22222222222');
insert into consulta values (null,'2019-06-08','14:30','Sergio Silva','51984865351','66666666666');
insert into consulta values (null,'2019-05-03','13:30','Gilson Guedes','53981868587','55555555555');

insert into parte values ('00000000001','Sergio Silva','Cliente');
insert into parte values ('00000000002','Pedro Paulo','Cliente');
insert into parte values ('00000000003','Silvia Sanhudo','Cliente');
insert into parte values ('00000000004','Gilson Guedes','Cliente');
insert into parte values ('00000000005','Ana Amaro','Cliente');
insert into parte values ('00011100011100','ABCTelecom','Parte Contraria');
insert into parte values ('00011100011111','DTF Ltda','Parte Contraria');
insert into parte values ('00011100011122','KON S.A','Parte Contraria');
insert into parte values ('00011100011133','Silva Santos','Parte Contraria');
insert into parte values ('00011100011144','KKM Ltda','Parte Contraria');

insert into endereco values (null,'Av. Bento Gonçalves','4455','ap. 302','Agronomia','Porto Alegre','RS','00000000001');
insert into endereco values (null,'Av. Liberdade','123','ap.256','Santa Isabel','Viamão','RS','00000000002');
insert into endereco values (null,'Rua Pinto Bandeira','633',null,'Centro','Porto Alegre','RS','00000000003');
insert into endereco values (null,'Rua Antonio Zanquetim','335',null,'Viamopolis','Viamão','RS','00000000004');
insert into endereco values (null,'Av. Nilo Peçanha','7561','4º andar','Chacara das Pedras','Porto Alegre','RS','00000000005');
insert into endereco values (null,'Rua A','123',null,'Centro','Londrina','PR','00011100011100');
insert into endereco values (null,'Av. Paraizo','4455',NULL,'Cidade Baixa','Zeropolis','SP','00011100011111');
insert into endereco values (null,'Av. Antonio Zanquetim','5566','sala 5','Centro','Porto Alegre','RS','00011100011122');
insert into endereco values (null,'Rua C','222',null,'São Lucas','Gravatai','RS','00011100011133');
insert into endereco values (null,'Rua Jose Filho','185',null,'Krahe', 'Alvorada','RS','00011100011144');


insert into cliente values ('123456789','brasileiro','sergio@gmail.com','00000000001');
insert into cliente values ('987456321','brasileiro','pedro@hotmail.com','00000000002');
insert into cliente values ('321456987','haitiana','sanhudo@gmail.com','00000000003');
insert into cliente values ('741258963','argentino','gilsong@outlook,com','00000000004');
insert into cliente values ('963258741','brasileira','ana@gmail.com','00000000005');


insert into telefone values (null,'Celular','51','998877445','00000000001');
insert into telefone values (null,'Residencial','51','34460488','00000000002');
insert into telefone values (null,'Celular','51','981818514','00000000003');
insert into telefone values (null,'Residencial','51','30256699','00000000004');
insert into telefone values (null,'Celular','51','989028076','00000000005');


insert into documento value (null,'Identidade',null,'Outros','00000000001');
insert into documento value (null,'Foto',null,'Outros','00000000001');
insert into documento value (null,'Pet.inicial',null,'Petição','00000000001');
insert into documento value (null,'Identidade',null,'Outros','00000000002');
insert into documento value (null,'Procuração',null,'Outros','00000000003');
insert into documento value (null,'Pet.inicial',null,'Petição','00000000002');
insert into documento value (null,'Pet.inicial',null,'Petição','00000000003');
insert into documento value (null,'Pet.36',null,'Petição','00000000004');
insert into documento value (null,'Pet.85',null,'Petição','00000000005');

insert into documento value (null,'Contrato',null,'Contrato','00000000004');
insert into documento value (null,'Contrato',null,'Contrato','00000000005');
insert into documento value (null,'Contrato',null,'Contrato','00000000001');
insert into documento value (null,'Contrato',null,'Contrato','00000000002');
insert into documento value (null,'Contrato',null,'Contrato','00000000003');



insert into pagamento value (null,22000,'2019-01-15','00111700000003','00000000003');
insert into pagamento value (null,1000,'2019-05-21','00111700000043','00000000001');
insert into pagamento value (null,5000,'2019-05-21','001117000000448','00000000001');
insert into pagamento value (null,2500,'2018-12-04','001117000000775','00000000002');
insert into pagamento value (null,50000,'2017-08-05','00111700000012','00000000005');

insert into acao values (null,'Trabalhista');
insert into acao values (null,'Cível');
insert into acao values (null,'Criminal');
insert into acao values (null,'Previdenciaria');
insert into acao values (null,'Trabalhista');

insert into representacao values (1,'22222222222');
insert into representacao values (2,'33333333333');
insert into representacao values (3,'44444444444');
insert into representacao values (4,'55555555555');
insert into representacao values (2,'66666666666');

insert into peticao value (null,'Inicial',1);
insert into peticao value (null,'Inicial',2);
insert into peticao value ('0011170000000002','Andamento',3);
insert into peticao value ('0011170000000003','Andamento',4);
insert into peticao value (null,'Inicial',5);

insert into distribuicao values ('00000000000',1,'2019-01-02','15:00');
insert into distribuicao values ('11111111111',2,'2019-01-03','14:30');
insert into distribuicao values ('77777777777',3,'2019-01-03','14:30');
insert into distribuicao values ('88888888888',4,'2019-05-03','08:32');
insert into distribuicao values ('99999999999',5,'2018-12-06','14:32');

insert into contrato values (2000,0.5,10);
insert into contrato values (1000,0.2,11);
insert into contrato values (5000,0.3,12);
insert into contrato values (1000,0.5,13);
insert into contrato values (2000,0.5,14);

insert into processo values ('00111800000001','01','Viamão','Reparação de Danos',2);
insert into processo values ('00111800000002','02','Viamão','Acidente trabalho',1);
insert into processo values ('00111800000004','03','Porto Alegre','Acidente trabalho',5);
insert into processo values ('00111800000005','04','Porto Alegre','Auxilio Doença',4);
insert into processo values ('00111800000003','05','Viamão','Habeas Corpus',3);

insert into procedimento values (null,'2019-08-03','15:20','Rua A','00111800000001','00000000000','Audiência');
insert into procedimento values (null,'2019-07-15','19:20','Rua A','00111800000002','00000000000','Audiência');
insert into procedimento values (null,'2019-09-17','14:50','Rua B','00111800000003','11111111111','Audiência');
insert into procedimento values (null,'2018-04-26','09:40','Rua A','00111800000001','77777777777','Audiência');
insert into procedimento values (null,'2019-11-29','16:10','Rua C','00111800000005','88888888888','Audiência');
insert into procedimento values (null,'2019-12-03','15:35','Rua AB','00111800000002','99999999999','Perícia');
insert into procedimento values (null,'2015-07-13','08:50','Rua AB','00111800000002','99999999999','Perícia');
insert into procedimento values (null,'2019-09-15','15:20','Rua AB','00111800000004','00000000000','Perícia');
insert into procedimento values (null,'2014-11-27','10:20','Rua AB','00111800000004','00000000000','Perícia');
insert into procedimento values (null,'2020-08-19','11:40','Rua DE','00111800000001','88888888888','Perícia');

insert into comunicado values (null,'2019-05-07','Audiencia',1);
insert into comunicado values (null,'2019-05-07','Pericia',6);
insert into comunicado values (null,'2019-04-15','Audiencia',2);
insert into comunicado values (null,'2019-05-08','Audiencia',4);
insert into comunicado values (null,'2019-03-05','Pericia',10);


insert into audiencia values ('Inicial','33333333333',1);
insert into audiencia values ('Inicial','22222222222',2);
insert into audiencia values ('Inicial','44444444444',3);
insert into audiencia values ('Prosseguimento','33333333333',4);
insert into audiencia values ('Inicial','55555555555',5);

insert into pericia values ('Insalubridade',null,'Joao Carlos',6);
insert into pericia values ('Periculosidade',null,'Joao Carlos',7);
insert into pericia values ('Médica',null,'Luis Antonio',8);
insert into pericia values ('Médica',null,'Rafael Santos',9);
insert into pericia values ('Médica',null,'Luiz Lima',10);

insert into prazo values (null,'2019-06-02','2019-06-10','Réplica','00111800000002','99999999999');
insert into prazo values (null,'2019-08-03','2019-08-13','Contrarrazoes','00111800000001','00000000000');
insert into prazo values (null,'2019-07-15','2019-07-20','Recurso','00111800000002','00000000000');
insert into prazo values (null,'2019-09-17','2019-09-25','Réplica','00111800000003','11111111111');
insert into prazo values (null,'2018-04-26','2018-04-30','Manifestação','00111800000005','77777777777');

insert into sentenca values (null,'2019-01-06','Improcedente',null,'00111800000001');
insert into sentenca values (null,'2019-03-09','Procedente','5000','00111800000002');
insert into sentenca values (null,'2019-06-08','Extinto',null,'00111800000004');
insert into sentenca values (null,'2018-05-07','Procedente','2000','00111800000005');
insert into sentenca values (null,'2017-11-06','Improcedente',null,'00111800000003');

insert into realizacaoPrazo values ('44444444444',1,3,'2019-06-04');
insert into realizacaoPrazo values ('55555555555',4,4,'2019-09-19');
insert into realizacaoPrazo values ('22222222222',1,2,'2019-06-05');
insert into realizacaoPrazo values ('44444444444',3,3,'2019-07-20');
insert into realizacaoPrazo values ('33333333333',5,1,'2018-04-28');

insert into autor values ('00000000001',1);
insert into autor values ('00000000002',2);
insert into autor values ('00000000003',3);
insert into autor values ('00000000004',4);
insert into autor values ('00000000005',5);
insert into reu values ('00011100011100',1);
insert into reu values ('00011100011111',2);
insert into reu values ('00011100011122',3);
insert into reu values ('00011100011133',4);
insert into reu values ('00011100011144',5);

/*--------------------------------------------------------Dados Novos------------------------------------------------------------------------------*/

/* inserção de funcionarios*/
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Jacob","16060402763","43586481199",3126,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Jermaine","16290302461","39211766299",1245,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Taylor","16430419189","05605559299",2332,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Xantha","16220405930","87711358299",2581,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Kellie","16050315267","64354621699",3155,"Advogado");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Remedios","16340519545","61805003799",2715,"Auxiliar");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Savannah","16730924419","51536921599",4190,"Auxiliar");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Kamal","16401013870","16921259399",4906,"Auxiliar");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Aiko","16381008764","80664142899",1848,"Auxiliar");
INSERT INTO colaborador (nome,cpf,rg,salario,funcao) VALUES ("Teegan","16720926622","61475292799",3763,"Auxiliar");

/*Advogados*/
INSERT INTO advogado (oab,especializacao) VALUES ("RS074402","Criminal ","16060402763");
INSERT INTO advogado (oab,especializacao) VALUES ('RS108563',"Trabalhista ", "16290302461");
INSERT INTO advogado (oab,especializacao) VALUES ('RS88990',"Trabalhista ", "16430419189");
INSERT INTO advogado (oab,especializacao) VALUES ('RS052003',"Previdenciario","16220405930");
INSERT INTO advogado (oab,especializacao) VALUES ('RS105553',"Civel ","16050315267");

/*Auxiliares */
INSERT INTO auxiliar (cpfaux) VALUES ("16340519545");
INSERT INTO auxiliar (cpfaux) VALUES ("16730924419");
INSERT INTO auxiliar (cpfaux) VALUES ("16401013870");
INSERT INTO auxiliar (cpfaux) VALUES ("16381008764");
INSERT INTO auxiliar (cpfaux) VALUES ("16720926622");
/* Inserção das consultas */

INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (1,"07/05/2020","14:00","Kuame","1693041975199","09 51 76 04 83","16220405930");
INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (2,"20/04/2019","11:30","Whoopi","1625071306199","09 85 37 91 33","16430419189");
INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (3,"13/10/2018","10:30","Kay","1691080598599","01 17 96 84 58","16050315267");
INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (4,"26/06/2020","15:30","Tiger","1630081891499","09 94 64 29 86","16430419189");
INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (5,"04/09/2018","17:30","Castor","1673061860999","03 83 01 19 70","16060402763");
INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (6,"22/04/2020","15:00","Astra","1669022819299","09 87 42 23 33","16050315267");
INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (7,"03/09/2018","09:30","Gavin","1651040220899","09 10 27 67 40","16290302461");
INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (8,"09/10/2019","17:00","Noelani","1699122975299","01 33 21 70 45","16060402763");
INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (9,"20/07/2018","10:00","Shay","1692061475199","09 87 81 52 80","16430419189");
INSERT INTO advogado (codconsulta,dia,hora,nomecliente,cpfcliente,telefone,cpfadv) VALUES (10,"07/10/2018","11:30","Nelle","1668082500799","06 37 29 88 70","16430419189");

