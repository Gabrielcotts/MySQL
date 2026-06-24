create database cadastro
default character set utf8mb4
default collate utf8mb4_general_ci;
use cadastro;

create database meuBancoTest;
drop database meuBancoTest;

create table tb_pessoa(
id int not null auto_increment primary key,
nome varchar(45) not null,
nascimento date not null ,
sexo enum('M', 'F') not null,
peso decimal(5, 2) not null,
altura decimal(3, 2) not null,
nacionalidade varchar(20) default 'Brasil'

) default charset = utf8mb4;

create table tb_pessoa_fisica(
cpf char(11) not null primary key,
id_pessoa int not null unique,
foreign key (id_pessoa) references tb_pessoa(id)

) default charset = utf8mb4;

create table tb_pessoa_juridica(
cnpj char(14) not null primary key,
id_pessoa int not null unique,
foreign key (id_pessoa) references tb_pessoa(id)

) default charset = utf8mb4;

describe tb_pessoa;
describe tb_pessoa_fisica;
describe tb_pessoa_juridica;
