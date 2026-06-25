create database db_Cursos
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use db_Cursos;

create table tb_curso(
id int not null auto_increment primary key,
nome varchar(100) not null,
carga_horaria int not null,
categoria varchar(50) not null , 
valor decimal(8,2) not null,
ativo enum('S', 'N') default 'S'
)default charset = utf8mb4;