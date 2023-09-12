create database TabelasSprint1;
use TabelasSprint1;
CREATE TABLE Usuario  (
IDcliente int primary key auto_increment,
Nome varchar(40)not null,
CNPJ varchar(14)not null,
NomeEmpresa varchar(50)not null,
Representante varchar(40),
Email varchar (50),
TelefoneFixo varchar (12),
TelefoneCelular varchar (13)not null,
TelefoneReserva varchar (13));
select*from Usuario;
create table Temperatura ( 
IdTemperatura int primary key auto_increment,
Temperatura varchar(40)not null,
Data_hora datetime not null);
select*from temperatura;
create table Umidade ( 
IdUmidade int primary key auto_increment,
Umidade varchar(40)not null,
Data_hora datetime not null);
select*from umidade, temperatura;






