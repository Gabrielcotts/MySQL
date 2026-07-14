select * from tb_alunos;

select nome from tb_alunos;
select nome from tb_alunos order by nome asc;
select nome, nascimento from tb_alunos where nascimento between '2000-01-01' and  '2015-12-31' order by nascimento asc;
select nome, nascimento from tb_alunos where nascimento between '2000-01-01' and  '2015-12-31' order by nome asc;
select nome, curso, sexo from tb_alunos where curso = 'Engenharia de Software' and sexo = 'M';
select nome, curso, sexo from tb_alunos where curso = 'Engenharia de Software' and sexo = 'F';
select nome, nacionalidade from tb_alunos where nacionalidade = 'Brasil' and sexo = 'F' and nome like 'a%';
