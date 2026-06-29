create database db_academia
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use db_academia;

create table tb_aluno(
id int not null auto_increment primary key,
nome varchar(120) not null,
nascimento date not null,
peso decimal(5,2) not null,
altura decimal(3,2) not null,
plano varchar(30) not null,
ativo enum('S', 'N') default 'S'
)default charset = utf8mb4;

describe tb_aluno;