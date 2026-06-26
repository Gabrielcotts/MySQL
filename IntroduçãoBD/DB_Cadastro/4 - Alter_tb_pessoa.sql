use cadastro;
describe pessoa;
describe tb_pessoa_fisica;
describe tb_pessoa_juridica;
select * from tb_pessoa;

drop table tb_pessoa_jutidica;

alter table tb_pessoa
add column profissao varchar(10);

alter table tb_pessoa
modify column profissao varchar(20) not null default '';

alter table tb_pessoa
drop column profissao;

alter table tb_pessoa
add column profissao varchar(10) not null after nome;

alter table tb_pessoa
add column cor enum('Pardo', 'Preto', 'Branco') not null first;

alter table tb_pessoa
change column profissao cargo varchar(20) not null;

alter table tb_pessoa
modify column cargo varchar(20) not null default '' after nascimento;

alter table tb_pessoa
rename to pessoa;

alter table cursos
add column id int not null auto_increment primary key first;