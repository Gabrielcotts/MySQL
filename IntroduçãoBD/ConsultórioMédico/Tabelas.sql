create database db_clinica;
USE db_clinica;

create table tb_medico (
    id_medico int auto_increment primary key,
    nome varchar(120) not null,
    crm	 varchar(20) not null unique,
    especialidade varchar(80) not null
);	

create table tb_paciente (
	id_paciente int auto_increment primary key,
    nome varchar(120) not null, 
    cpf varchar(14) not null unique,
    data_nascimento date,
    telefone varchar(20)
);

create table tb_agendamento (
	id_agendamento int auto_increment primary key,
	id_paciente int not null, 
	id_medico int not null, 
	data_consulta date not null,
    hora_consulta time not null,
	status varchar(20) not null,
    valor_consulta decimal(8,2),
    foreign key (id_paciente) references paciente(id_paciente),
    foreign key (id_medico) references medico(id_medico)
);









CREATE TABLE agendamento (
   
    status VARCHAR(20) NOT NULL DEFAULT 'agendado',

);
