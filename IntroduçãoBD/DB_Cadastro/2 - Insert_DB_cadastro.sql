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
 
 insert into cursos values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Bancos de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018');
