create database Restaurante;

use Restaurante;


CREATE TABLE Restaurante (
idRestaurante int primary key auto_increment,
nomeRestaurante varchar(45),
bairro varchar(45),
especialidade varchar(45)
) auto_increment = 1000;

create table Cozinheiro (
idCozinheiro int primary key auto_increment,
nomeCozinheiro varchar(45),
telefone varchar(20),
dtNasc date,
orientador int,
	foreign key (orientador) references Cozinheiro(idCozinheiro),
fkRestaurante int,
	foreign key (fkRestaurante) references Restaurante(idRestaurante)
) auto_increment = 31;

-- Inserir dados nas tabelas, de forma que exista mais de um cozinheiro para algum restaurante
-- Mais de um cozinheiro orientado por um cozinheiro experiente
INSERT INTO Restaurante(nomeRestaurante,bairro,especialidade) VALUES
('BK', 'Radial leste', 'brasileira'),
('Pizzaria RR', 'Cidade tiradentes', 'italiana'),
('Chavo', 'São mateus', 'Mexicana');

INSERT INTO Cozinheiro(nomeCozinheiro, telefone, dtNasc, fkrestaurante)  VALUES
('Bruno', 11951160989, '1979-10-11', 1000),
('Mario', 11964053713, '2000-11-11', 1001),
('José', 11921212121, '2003-04-13', 1002);


select * from Restaurante;
select * from Cozinheiro;

-- Exibir os dados dos restaurantes e de seus respectivos cozinheiros
select * from Restaurante join Cozinheiro on fkRestaurante = idRestaurante;

-- Exibir os dados de um determinado restaurante e os dados dos seus respectivos cozinheiros
select * from Restaurante join Cozinheiro on fkRestaurante = idRestaurante 
where nomeRestaurante = 'BK';

-- Exibir os dados dos cozinheiros e os dados dos cozinheiros orientados
select * from Cozinheiro as c join Cozinheiro as o
on o.idCozinheiro = c.orientador;

-- Exibir os dados dos cozinheiros e os dados dos cozinheiros orientados de um cozinheiro especifico
select c.nomeCozinheiro, o.*
from Cozinheiro as c join Cozinheiro as o
on o.idCozinheiro = c.orientador;

-- Exibir os dados dos Cozinheiros, os dados dos respectivos Restaurantes em que trabalham
-- e os dados dos Cozinheiros orientados
select *from Restaurante 
join Cozinheiro as c join Cozinheiro as o
on c.orientador = o.idCozinheiro;
            
