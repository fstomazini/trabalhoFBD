/* cria um banco de dados */
create database escritorio;
/* seleciona o banco de dados */
use escritorio;
 
create table colaborador
(nome varchar(50) not null,
cpf char(11) not null,
rg char(11) not null,
salario float not null,
funcao enum('Auxiliar','Advogado','Outros') not null,
primary key (cpf));

create table advogado(
oab char(8) not null UNIQUE,
especializacao enum('Trabalhista', 'Civel', 'Criminal', 'Previdenciario') not null,
cpfAdv char(11) not null primary key,
foreign key (cpfAdv) references colaborador(cpf));

create table auxiliar(
cpfAux char(11) not null,
primary key (cpfAux),
foreign key (cpfAux) references colaborador(cpf));

create table parte(
cpfcnpj varchar(14) not null,
nome varchar(50) not null,
tipo enum ('Cliente','Parte Contrária'),
primary key(cpfcnpj));

create table endereco(
codendereco int not null autoincrement, 
rua varchar(50) not null,
numero varchar(10) not null,
complemento varchar(50),
bairro varchar(50) not null,
cidade varchar(50) not null,
UF char(2) not null,
identificacao varchar(14) not null,
primary key (codendereco), 
foreign key (identificacao) references parte(cpfcnpj));

create table cliente (
rg varchar(12) not null,
nacionalidade varchar(20) not null, 
email varchar(50) not null, 
cpf varchar(14) not null primary key,
foreign key(cpf) references parte(cpfcnpj) );

create table Consulta(
 codConsulta int autoincrement not null,
 dia date  not null,
 hora time not null,
 nomecliente varchar(50) not null,
 cpfcliente varchar(11),
 telefone varchar(12)  not null,
 cpfAdv char(11) not null,
 primary key (codConsulta),
 foreign key (cpfAdv) references advogado (cpfAdv),
 foreign key (cpfcliente) references cliente (cpf),
 unique (dia,hora)
 );



create table telefone(
codtelefone int not null autoincrement, 
tipo enum('Comercial', 'Residêncial', 'Celular') not null, 
ddd char(2) not null,
numero varchar(9) not null, 
cpf varchar(14) not null,
primary key(codtelefone),
foreign key(cpf) references cliente(cpf));



create table documento(
coddocumento int not null autoincrement,
nome varchar(50) not null,
arquivo blob, 
tipo enum('Petição','Contrato','Outros'),
cpfCliente varchar(14) not null, 
codacao int, 
primary key (coddocumento),
foreign key(cpfCliente) references cliente(cpf));


create table pagamento(
codPagamento int not null autoincrement,
valor float not null,
dataPagamento date not null,
numProc varchar(25) not null,
cpfCliente varchar(14) not null, 
primary key (codPagamento),
foreign key(cpfCliente) references cliente(cpf));

 


create table acao (
codacao int not null autoincrement,
area enum('Trabalhista', 'Cível', 'Criminal', 'Previdenciaria') not null, 
primary key (codacao));




create table representacao(
codacao int not null,
cpfAdv char(11) not null,
primary key (codacao,cpfAdv),
foreign key( codacao) references acao(codacao),
foreign key(cpfAdv)references advogado(cpfAdv));


create table peticao (
 numeroproc varchar(25),
 tipo enum('Inicial', 'Andamento') not null,
 coddocumento int not null unique,
 primary key (coddocumento), 
 foreign key(coddocumento) references documento(coddocumento));

create table distribuicao(
cpfAux char(11) not null,
coddocumento int not null, 
dia date not null, 
hora time not null, 
primary key (cpfAux,coddocumento),
foreign key(cpfAux) references auxiliar(cpfAux),
foreign key (coddocumento) references peticao(coddocumento));

create table contrato(
preco float not null,
honorarios float not null, 
coddocumento int not null primary key,
foreign key(coddocumento) references documento(coddocumento));

create table processo(
numprocesso varchar(25) not null, 
vara char(2) not null, 
comarca varchar(50) not null,
tipo varchar(50) not null, 
codacao int not null,
primary key(numprocesso),
foreign key(codacao) references acao(codacao));

create table procedimento(
codprocedimento int not null autoincrement,
dia date not null,
hora time not null,
localP char(50) not null,
numprocesso varchar(25) not null,
cpfAux char(11) not null, 
tipo enum('Audiência','Perícia'),
primary key(codprocedimento),
foreign key(cpfAux) references auxiliar(cpfAux),
foreign key(numprocesso) references processo(numprocesso));

create table comunicado(
codcomunicado int not null autoincrement,
dataentrega date,
informacao varchar(100),
codprocedimento int not null,
primary key(codcomunicado),
foreign key(codprocedimento) references procedimento(codprocedimento));

create table audiencia(
tipo enum('Inicial', 'Prosseguimento') not null,
cpfAdv varchar(11) not null,
codprocedimento int not null primary key,
foreign key(cpfAdv) references colaborador(cpf),
foreign key(codprocedimento) references procedimento(codprocedimento));

create table pericia(
tipo enum('Médica', 'Periculosidade', 'Insalubridade') not null,
laudo blob,
perito varchar(50) not null,
codprocedimento int not null,
primary key(codprocedimento),
foreign key(Codprocedimento) references procedimento(codprocedimento));

create table prazo(
codprazo int not null autoincrement,
datainicio date not null,
datafim date not null, 
descricao varchar(200) not null,
numprocesso varchar(25) not null,
codauxiliar varchar(11) not null,
primary key (codprazo), 
foreign key(numprocesso) references processo(numprocesso),
foreign key(codauxiliar) references colaborador(cpf));

create table sentenca(
codsentenca int not null autoincrement,
datasentenca date not null, 
resultado enum('Procedente','Improcedente','Extinto') not null,
valor float, 
numprocesso varchar(25) not null,
primary key(codsentenca),
foreign key(numprocesso) references processo(numprocesso));
 
 create table realizacaoPrazo(
 codPrazo int not null,
 codPeticao int not null,
 dia date not null,
 primary key (dia,codPrazo,codPeticao),
 foreign key(codPrazo) references prazo(codprazo),
 foreign key(codPeticao) references documento(coddocumento));

create table autor(
cpfAutor varchar(14) not null,
codAcao int not null,
foreign key(cpfAutor) references parte(cpfcnpj),
foreign key(codAcao) references acao(codacao));

create table reu(
cpfReu varchar(14) not null,
codAcao int not null,
foreign key(cpfReu) references parte(cpfcnpj),
foreign key(codAcao) references acao(codacao));

create table peticionamento(
codacao int not null,
cpfadv char(11) not null,
coddocumento int not null,
primary key(codacao, cpfadv,coddocumento),
foreign key(codacao) references acao(codacao),
foreign key(cpfadv) references advogado(cpfadv), 
foreign key(coddocumento) references documento(coddocumento));

create table documentacao(
coddocumento int, 
codacao int,
primary key (codacao, coddocumento),
foreign key(codacao) references acao(codacao), 
foreign key(coddocumento) references documento(coddocumento)
);

create table pertence(
coddocumento int,
codpeticao int,
primary key(coddocumento,codpeticao),
foreign key(coddocumento) references  documento(coddocumento),
foreign key(codpeticao) references peticao(coddocumento)
);


drop table 	
