create database db_biblioteca
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use db_biblioteca;

create table tb_livro(
id int not null auto_increment primary key,
titulo varchar(120) not null,
autor varchar(80) not null,
paginas int unsigned,
preco decimal(8, 2) not null,
categoria varchar(40) not null,
disponivel enum('S', 'N') default 'S',
ano_publicacao year not null
) default charset = utf8mb4;

describe tb_livro;