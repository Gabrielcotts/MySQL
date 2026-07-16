use cadastro;

select * from pessoa;

select distinct nacionalidade from pessoa order by nacionalidade;

select nacionalidade from pessoa group by nacionalidade;
select nacionalidade, count(nome) from pessoa group by nacionalidade;

select max(peso) from pessoa group by peso limit 1;
select nome, peso from pessoa order by peso desc;
select peso, count(nome) from pessoa group by peso having count(nome) > 2;
select nascimento, count(*) from pessoa group by nascimento order by count(*) desc;

select avg(peso) from pessoa;
select peso, count(*) from pessoa where altura > 1.60 group by peso having peso > (select avg(peso) from pessoa);