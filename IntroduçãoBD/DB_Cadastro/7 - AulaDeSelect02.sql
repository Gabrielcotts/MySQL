use cadastro;
describe pessoa;

select * from pessoa;

update pessoa set nome = 'Fernando' where id = '2' limit 1;
update pessoa set nome = 'José' where id = '4' limit 1;
update pessoa set nome = 'Maria',nascimento = '2009-07-16' ,nacionalidade = 'México',peso = 51.27 ,altura = 1.49 where id = '5' limit 1;

select * from pessoa where nome = 'Gabriel';
select * from pessoa where nome like '_a%';
select * from pessoa where nome like '%a';
select * from pessoa where nome like '%a%';
select * from pessoa where nome like 'g%';
select * from pessoa where nome not like 'g%';
select * from pessoa where nome like '_a%s';
select * from pessoa where nome like '%_a%s';
select * from pessoa where nome not like '_a%s';
select * from pessoa where nome like '%cotts%';
select * from pessoa where nome not like '%cotts%';

select distinct nacionalidade from pessoa;
select distinct nacionalidade from pessoa order by nacionalidade;

select count(*) from pessoa;
select count(nome) from pessoa;
select count(*) from pessoa where nacionalidade = 'Brasil';
select count(*) from pessoa where peso >= 50;

select max(altura) from pessoa;
select max(peso) from pessoa;

select min(altura) from pessoa;
select min(peso) from pessoa;

select sum(peso) from pessoa;

select avg(altura) from pessoa;
select avg(peso) from pessoa;