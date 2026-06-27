insert into tb_pessoa (nome, nascimento, sexo, peso, altura, nacionalidade)
values ('Gabriel', '2005-02-14', 'M', 92.47 ,1.82, default),
 ('Nathaly', '2006-05-08', 'F', 48.76 , 1.58, 'Cuba'),
 ('Luiza', '1988-09-29', 'F', 68.71 , 1.76, default),
 ('Gabrielly', '2011-04-08', 'F', 66.54 ,1.72, 'EUA');
 
/* Forma simplificada:

insert into tb_pessoa values
 (default,'Gabriel', '2005-02-14', 'M', 92.47 , 1.82, default),
 (null, 'Nathaly', '2006-05-08', 'F', 48.76 , 1.58, 'Cuba'),
 (default, 'Luiza', '1988-09-29', 'F', 68.71 , 1.76, default);*/
