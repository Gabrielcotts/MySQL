insert into tb_medico (nome, crm, especialidade)
value ('Carlos Silva', 'CRM 16579', 'Clinico Geral'), 
('Fernanda Souza', 'CRM 54321', 'Pediatra'),
('Ricardo Mendes', 'CRM 46327', 'Cardiologista');

insert into tb_paciente (nome, cpf, data_nascimento, telefone)
value ('Elizeu Silva', '057.056.047-25', '1985-04-16', '6198174612'),
('Fernando José', '658.049.541-46', '2004-06-29', '7781111323'),
('Carlos Mineiro', '896.187.456-32', '2001-04-09', '2124657321'),
('Luciene Dos Anjos', '946.054.584-15', '2005-11-14', ' ');

insert into tb_agendamento (data_consulta, hora_consulta, status, valor_consulta )
value ('2026-06-05');



select * from tb_medico; 
select * from tb_paciente;


