SELECT sigla FROM tb_regioes;
SELECT nome from tb_regioes;
SELECT * FROM tb_regioes;

SELECT nome, sigla FROM tb_estados;
SELECT sigla FROM tb_estados;
SELECT * FROM tb_estados;

/*SELECT DISTINCT id_regiao as id from tb_estados;*/




SELECT * FROM tb_estados where nome = 'sul';
SELECT nome from tb_regioes where id >= 3;
SELECT * FROM tb_estados where id_regiao = 3;
SELECT sigla FROM tb_estados where id<24;
select * from tb_estados where id_regiao = 3
and 5;
select * from tb_estados where id_regiao = 4
or 5;

select nome from tb_estados where id_regiao = 2 
and sigla = 'AL';

select nome from tb_estados where id_regiao = 2
and (sigla = 'AL' OR sigla = 'CE' OR sigla = 'PB');
/*jeito mais fácil: 
in('AL', 'CE', 'PB'); */
 
 select nome from tb_estados where id_regiao <> 2 
and sigla = 'DF';

select nome, sigla from tb_estados order by nome asc;
select nome, sigla from tb_estados order by  nome desc;
select nome, sigla from tb_regioes order by  nome desc;

select * from tb_estados where nome like '%rio%';
select * from tb_estados where nome like 'a%';
select * from tb_estados where nome like '%a';
select * from tb_estados where nome like '____';

select * from tb_estados where id_regiao NOT in (3,5);
select nome from tb_estados where sigla in ('DF', 'TO', 'AC', 'AL', 'PB', 'PA', 'PR');
select nome from tb_estados where nome like ('a%') 
and sigla not in('AL');
select nome, sigla from tb_estados where id_regiao not in (1,2);

select nome from tb_estados where id_regiao between 2 and 4;

update tb_regioes
set sigla = 'CO'
where nome = 'Centro Oeste';

delete from tb_estados
where id =  13;

 
 


