CREATE DATABASE Batata;

use batata;

-- 1 tabela CADASTRO CLIENTE
CREATE TABLE Cadastro (
IdSensor int primary key auto_increment,
nome varchar(50) not null,
email varchar(100) default 'Sem e-mail' unique,
cpf char(11) unique,
nomeEmpresa varchar(50) not null,
telefone varchar(30) unique,
telefoneRerva varchar(30) unique,
Representante varchar(50) not null,
CNPJ char(14) unique,
RGDono char(8) unique,
RGRepresentante char(8) unique,
Senha varchar(100) unique
);

describe cadastro;

-- 2 tabela LOGIN CLIENTES
CREATE TABLE loginCliente (
idLogin int primary key auto_increment,
Nome varchar(50) not null,
Email varchar(100) default 'Sem e-mail' unique,
Senha varchar(100) unique
);

describe loginCliente;

-- 3 tabela SENSORES
CREATE TABLE sensores (
IdSensor int primary key auto_increment,
TipoSensor varchar(11) 
constraint chkSensor check (TipoSensor in('Temperatura', 'Umidade')),
Horario datetime,
Dados varchar(3),
MinDia varchar(3),
MaxDia varchar(3),
MediaDia varchar(3)
);

describe sensores;

-- 4 tabela ADMS 
CREATE TABLE ADMS (
idAdms int primary key auto_increment,
Nome varchar(50) not null,
Email varchar(100) default 'Sem e-mail' unique,
Senha varchar(100) unique,
CPF char(11) unique
);

describe adms;
