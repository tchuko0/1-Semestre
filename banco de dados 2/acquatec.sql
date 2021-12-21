CREATE DATABASE meuPlayer;

USE meuPlayer;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 

 SELECT count(aviso.id) as qtd from aviso;

select * from usuario;
select * from aviso;


select usuario.nome, aviso.titulo from usuario join aviso on fk_usuario = (usuario.id);