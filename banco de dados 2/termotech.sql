create database termotechgrupo4;
use termotechgrupo4;

CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT  NOT NULL,
nome VARCHAR(45) ,
email VARCHAR(45) ,
senha VARCHAR(45) ,
cnpj VARCHAR(45) ,
telefone VARCHAR(45) ,
endereco VARCHAR(45) ,
estado CHAR(2) , -- Varchar(2) pois os estados estão representados por siglas
cidade VARCHAR(45) 
) AUTO_INCREMENT  = 0;

CREATE TABLE armazenamento (
idArmazenamento INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
tipoArmazenamento VARCHAR(45) NOT NULL,
identificador VARCHAR(45) NOT NULL
) AUTO_INCREMENT = 101;

CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
tipo VARCHAR(45) NULL COMMENT 'check ( tipo = umidade or tipo = temperatura) ',
medicaoAtual VARCHAR(20),
data_hora DATETIME NOT NULL,
medicao VARCHAR(45) 
) AUTO_INCREMENT  = 201;
