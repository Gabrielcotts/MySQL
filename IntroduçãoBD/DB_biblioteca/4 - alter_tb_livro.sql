alter table tb_livro add column editora varchar(80) not null;
alter table tb_livro modify column editora varchar(80) not null default 'desconhecida';
alter table tb_livro change column editora nome_editora varchar(80) not null default 'desconhecida';
alter table tb_livro modify column editora varchar(80) after autor;
