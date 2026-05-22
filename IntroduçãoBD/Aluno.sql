create database SGA;
use SGA;

SELECT 
    *
FROM
    alunos
ORDER BY nota_final DESC;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    curso VARCHAR(50) NOT NULL,
    data_nasc DATE NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    nota_final FLOAT
);

INSERT INTO alunos(nome, curso, data_nasc, cidade, nota_final)
values ('Gabriel Cotts', 'Engenharia de Software',
'2005-02-14' ,'Brasília', 8.7),

('Nathaly Badias', 'Contabilidade',
'2006-05-08' ,'Brasília', 10.0),

('Luiza Vieira', 'Direito',
'1988-08-29' ,'Brasília', 6.7 );

SELECT 
    id, nome AS aluno
FROM
    alunos
WHERE
    nome = 'Gabriel Cotts';

SELECT 
    nome, nota_final as 'média'
FROM
    alunos
WHERE
    nota_final > 5;