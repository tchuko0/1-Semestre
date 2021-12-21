
CREATE DATABASE Campanha;

USE Campanha;

-- C) Criar as tabelas de acordo com a modelagem
CREATE TABLE Organizador (
idOrganizador int primary key auto_increment,
nomeOrganizador varchar(45),
endereco varchar(45),
email varchar(45),
orientador int,
	foreign key (orientador) references Organizador(idOrganizador)
) auto_increment = 30;

CREATE TABLE Campanha (
idCampanha int primary key auto_increment,
categoria varchar(45),
instituicao varchar(45),
dtFinal date,
fkOrganizador int,
	foreign key (fkOrganizador) references Organizador(idOrganizador)
) auto_increment = 500;

-- D) Inserir dados nas tabelas
INSERT INTO Organizador VALUES
(null, 'Altair', 'Rua Solimões - Vila Limão', 'altair@bandtec.com', null),
(null, 'Bruna', 'Rua Caninana - Jardim Helena', 'bruna@bandtec.com', null),
(null, 'Flavio', 'Rua Solimões - Vila Limão', 'flavio@bandtec.com', 30);

INSERT INTO Campanha VALUES
(null, 'Alimento', 'Paz e esperança', '2021-11-15', 30),
(null, 'Produto de higiene', 'Progresso', '2021-11-14', 30);


-- E) Exiba os dados das tabelas separadamente
select * from Organizador;
select * from Campanha;

-- G) Exibir os dados dos organizadores e de suas respectivas campanhas 
select * from Organizador join Campanha on fkOrganizador = idOrganizador;

-- H) Exibir os dados de um determinado organizador e de sua respectiva campanha
select * from Organizador join Campanha on fkOrganizador = idOrganizador where nomeOrganizador = 'Altair';

-- I) Exibir os dados dos organizadores novatos e dos seus respectivos orientadores
select *
	from Organizador as o join Organizador as n
		on n.idOrganizador = o.orientador;

-- J) Exibir os dados dos organizadores novatos e de seus respectivos orientadores, porem somente de um orientador
select o.nomeOrganizador, n.*
	from Organizador as o join Organizador as n
		on n.idOrganizador = o.orientador;

-- L) Exibir os dados dos orientadores novatos, os dados das respectivas campanhas e os dados dos orientadores;
select n.*, campanha.* from
	campanha join Organizador as o join Organizador as n
		on o.orientador= n.idOrganizador;