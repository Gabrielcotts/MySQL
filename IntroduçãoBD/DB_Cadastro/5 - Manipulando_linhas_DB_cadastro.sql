update cursos set nome = 'html5' where id = '1';
update cursos set nome = 'PHP', ano = '2015' where id = '4'; 
update cursos set nome = 'Java', carga_horaria = '40', ano = '2015' where id = '5' limit 1;

/*TOMAR CUIDADO*/
update cursos set ano = '2050', carga_horaria = '0' where ano = '2018';
update cursos set ano = '2018', carga_horaria = '0' where ano = '2050' limit 2;

delete from cursos where id = '8';
delete from cursos where ano = '2018'  limit 1;
delete from cursos where ano = '2050'  limit 1;

truncate table cursos;
/*OU*/
truncate cursos;