alter table tb_aluno add column email varchar(120) unique;
alter table tb_aluno change column email email_aluno varchar(120) unique;
alter table tb_aluno modify column email_aluno varchar(120) unique after nome;


alter table tb_aluno drop column email_aluno;
