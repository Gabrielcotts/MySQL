select * from tb_alunos;

select nome from tb_alunos;
select nome from tb_alunos order by nome asc;

select nome, nascimento from tb_alunos where nascimento between '2000-01-01' and  '2015-12-31' order by nascimento asc;
select nome, nascimento from tb_alunos where nascimento between '2000-01-01' and  '2015-12-31' order by nome asc;

select nome, curso, sexo from tb_alunos where curso = 'Engenharia de Software' and sexo = 'M';
select nome, curso, sexo from tb_alunos where curso = 'Engenharia de Software' and sexo = 'F';

select nome, nacionalidade from tb_alunos where nacionalidade = 'Brasil' and sexo = 'F' and nome like '_a%';
select nome, nacionalidade from tb_alunos where nacionalidade = 'Brasil' and sexo = 'F' and nome like '%a%';
select nome, nacionalidade from tb_alunos where nacionalidade = 'Colombia' and sexo = 'F' and nome like 'j%';

select nome, nacionalidade from tb_alunos where nacionalidade = 'Brasil' and sexo = 'M' and nome like '_a%';
select nome, nacionalidade from tb_alunos where nacionalidade = 'Cuba' and sexo = 'M' and nome like '%a%';
select nome, nacionalidade from tb_alunos where nacionalidade = 'EUA' and sexo = 'M' and nome like '%s';

select nome, nacionalidade, sexo from tb_alunos where sexo = 'M' and  nome like '%Souza%' and nacionalidade  = 'Brasil';
select nome, nacionalidade, sexo from tb_alunos where sexo = 'M' and  nome like '%Pereira%' and not nacionalidade  = 'Brasil';
select nome, nacionalidade, sexo, peso from tb_alunos where sexo = 'M' and  nome like '%Pereira%' and not nacionalidade  = 'Brasil' and peso < 100;

select nome, nacionalidade, sexo from tb_alunos where sexo = 'F' and  nome like '%Souza%' and  nacionalidade  = 'Brasil';
select nome, nacionalidade, sexo from tb_alunos where sexo = 'F' and  nome like '%Silva%' and not  nacionalidade  = 'Brasil';
select nome, nacionalidade, sexo, peso from tb_alunos where sexo = 'F' and  nome like '%Silva%' and not nacionalidade  = 'Brasil' and peso > 60;

select nome, nacionalidade from tb_alunos where nacionalidade in('EUA', 'Brasil', 'Cuba') and sexo = 'M'; 

select nome,  nacionalidade, sexo, altura from tb_alunos where sexo = 'M' and nacionalidade = 'Brasil' order by altura desc limit 1;
select nome,  nacionalidade, sexo, altura from tb_alunos where sexo = 'F' and nacionalidade = 'Brasil' order by altura desc limit 1;

select nome,  nacionalidade, sexo, altura from tb_alunos where sexo = 'M' and nacionalidade = 'Brasil' order by altura asc limit 1;
select nome,  nacionalidade, sexo, altura from tb_alunos where sexo = 'F' and nacionalidade = 'Brasil' order by altura asc limit 1;

select avg(peso) from tb_alunos;
select avg(altura) from tb_alunos;

select nome, sexo, peso, nascimento, nacionalidade from tb_alunos
 where sexo = 'F' and nascimento between '2000-01-01' and '2010-12-31' 
  and not nacionalidade = 'Brasil' order by peso asc;
  
  select nome, sexo, altura from tb_alunos where sexo = 'F' and altura >= 1.90;
