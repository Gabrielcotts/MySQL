create database db_escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use db_escola;

create table tb_alunos(
ra int not null auto_increment primary key,
nome varchar(120) not null,
nascimento date not null,
cpf char(11) not null unique,
altura decimal(3, 2) not null, 
peso decimal(5, 2) not null,
nacionalidade varchar(60) default 'Brasil',
mensalidade decimal(6, 2) not null,
curso varchar(120) not null,
sexo enum('M', 'F') not null

) default char set = utf8mb4;
