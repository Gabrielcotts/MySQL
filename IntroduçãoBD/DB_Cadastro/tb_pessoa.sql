CREATE DATABASE cadastro;
USE cadastro;

CREATE TABLE tb_pessoa(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo CHAR(1) NOT NULL CHECK (sexo IN ('M','F')),
    peso DECIMAL NOT NULL,
    altura DECIMAL NOT NULL,
    nacionalidade VARCHAR(20) NOT NULL
);

CREATE TABLE tb_pessoa_fisica(
    cpf CHAR(11) PRIMARY KEY,
    id_pessoa INT NOT NULL UNIQUE,
    FOREIGN KEY (id_pessoa) REFERENCES tb_pessoa(id)
);

CREATE TABLE tb_pessoa_juridica(
    cnpj CHAR(14) PRIMARY KEY,
    id_pessoa INT NOT NULL UNIQUE,
    FOREIGN KEY (id_pessoa) REFERENCES tb_pessoa(id)
);

DESCRIBE tb_pessoa;
DESCRIBE tb_pessoa_fisica;
DESCRIBE tb_pessoa_juridica;