select * from tb_curso;
select nome, valor from tb_curso;
select nome, ativo from tb_curso where ativo = 'S';
select nome, ativo from tb_curso where ativo = 'N'; 
select nome, valor from tb_curso where valor > 500;
select nome, valor from tb_curso where valor < 500; 
select nome from tb_curso where nome = 'Banco de Dados';
select nome from tb_curso order by nome desc;
select nome from tb_curso order by nome asc; 
select valor from tb_curso order by valor desc;
select valor from tb_curso order by valor asc;
select nome from tb_curso where nome like('_a%'); 
select ativo, nome from tb_curso where ativo = 'S' and nome like ('_a%');
select nome, carga_horaria from tb_curso where carga_horaria > 70;
select nome, valor from tb_curso where valor between 100 and 200;
select nome from tb_curso where nome like('%Engenharia%');
SELECT count(*) FROM tb_curso;   




