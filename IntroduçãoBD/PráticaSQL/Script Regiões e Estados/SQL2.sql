CREATE DATABASE db_ibge;
USE db_ibge;

CREATE TABLE tb_regioes (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(40) NOT NULL UNIQUE,
    sigla VARCHAR(2) NOT NULL UNIQUE
);

CREATE TABLE tb_estados (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    sigla VARCHAR(2) NOT NULL UNIQUE,
    id_regiao INT NOT NULL,
    
    CONSTRAINT fk_estados_regioes
        FOREIGN KEY (id_regiao)
        REFERENCES tb_regioes(id)
);

