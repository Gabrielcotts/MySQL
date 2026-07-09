use cadastro;
describe pessoa;
desc tb_pessoa_fisica;

select * from pessoa;
select * from pessoa order by nome;
select * from pessoa order by nome asc;
select * from pessoa order by nome desc;
select nome, nascimento, nacionalidade from pessoa;
select nome, nacionalidade, nascimento from pessoa;
select nome, nacionalidade, nascimento from pessoa order by nascimento;
select nome, nacionalidade, nascimento from pessoa order by nascimento desc;
select nome, nacionalidade, nascimento from pessoa order by nascimento, nome;
select * from pessoa where nacionalidade = 'Brasil';
select * from pessoa where nacionalidade = 'Brasil' order by nome;
select nome, nacionalidade, cargo from pessoa where nacionalidade = 'Brasil' order by nome;
select nome, peso from pessoa where peso <= '100' order by peso asc;
select nome, peso from pessoa where peso >= '70' order by peso asc;
select nome, peso from pessoa where peso = '92.47' order by peso asc;

select nome, peso from pessoa where peso != '92.47' order by peso asc;
/* ou */
select nome, peso from pessoa where peso <> '92.47' order by peso asc;

select * from pessoa where altura between '1.60' and '2.00' order by altura asc, nome desc;
select id, nome, nacionalidade from pessoa where nacionalidade in ('Brasil', 'Cuba' ) order by nome desc;

select nome, sexo, peso, altura from pessoa where peso > 60 and altura < 1.90;
select nome, sexo, peso, altura from pessoa where peso > 60 or altura < 1.90;