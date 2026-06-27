alter table tb_livro add column editora varchar(80) not null;
alter table tb_livro modify column editora varchar(80) not null default 'desconhecida';
alter table tb_livro change column editora nome_editora varchar(80) not null default 'desconhecida';
alter table tb_livro modify column nome_editora varchar(80) not null default 'desconhecida' after autor;
describe tb_livro;

alter table tb_aluno change ra id int;
alter table tb_aluno modify column  id int not null auto_increment;