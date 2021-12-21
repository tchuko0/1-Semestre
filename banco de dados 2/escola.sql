create database bd_escola;

use bd_escola;


create table grupo(
idgrupo int primary key auto_increment,
nomeGrupo varchar(45),
descricao varchar(45)
) auto_increment 1;

create table aluno(
ra int primary key auto_increment,
nomeAluno varchar(45),
emailAluno varchar(45),
fkgrupo int,
foreign key(fkgrupo)references grupo(idgrupo)
);


-- alter table aluno add column fkgrupo int;

-- ALTER TABLE aluno
-- ADD CONSTRAINT fkgrupo
-- FOREIGN KEY (fkgrupo) REFERENCES grupo(idgrupo);



create table professor(
idprofessor int primary key auto_increment,
nomeProfessor varchar (45),
diciplina varchar(45)
) auto_increment 10000;

create table prof_grupo(
	fkGrupo INT,
    fkProfessor INT,
    dataHora DATETIME,
    nota DECIMAL (3,1),
    FOREIGN KEY (fkGrupo) REFERENCES grupo(idGrupo),
    FOREIGN KEY (fkProfessor) REFERENCES professor(idProfessor),
    PRIMARY KEY (fkGrupo,fkProfessor, dataHora));

insert into grupo (nomeGrupo, descricao) values
('Agrosense','Medindo temperatura ideal para grãos'),
('Termosense','Medir a temperatura de medicamentos termolabeis'),
('TermJob','Controlando a temperatura do local de trabalho');

alter table grupo modify descricao varchar(100);

insert into aluno values
(101112,'Dener Cardozo','Dener169@gmail.com',1),
(111112,'Diego Cardozo','Diego169@gmail.com',1),
(121112,'Danilo Cardozo','Danilo169@gmail.com',2),
(131112,'Douglas Cardozo','Douglas169@gmail.com',1);

update aluno set fkgrupo = 1 where ra = 131112;

select * from aluno;
select * from professor;
select * from grupo;

insert into professor (nomeProfessor,diciplina) values
('Vivian','Banco de dados'),
('Brandão','Pesquisa e inovação'),
('Leo','Sócio emocional');

insert into prof_grupo values
(1,10000,'2020-10-29 10:00', 9.0),
(1,10001,'2020-10-29 13:00', 9.5),
(1,10002,'2020-10-29 16:00', 7.0),
(2,10000,'2020-10-30 10:00', 10.0),
(2,10001,'2020-10-30 13:00', 8.0),
(2,10002,'2020-10-30 16:00', 6.0);

select * from prof_grupo;

select grupo.nomeGrupo, aluno.nomeAluno 
from grupo
join aluno 
on fkgrupo=idgrupo;

select * from prof_grupo 
join grupo 
on fkgrupo=idgrupo 
join professor 
on fkprofessor=idprofessor
join aluno
ra where ra = 111112;

-- seleciona notas distintas
select distinct nota from prof_grupo;

-- menor nota
select min(nota) from prof_grupo;


-- maior nota
select max(nota)from prof_grupo;


-- soma quantas notas tem
select  count(nota) from prof_grupo group by nota;


-- soma as notas
select sum(nota)from prof_grupo;


-- medias das notas
select avg(nota)from prof_grupo; 

drop database bd_escola;


select avg(nota) as 'maior nota ',grupo.*, professor.* from grupo join prof_grupo on fkgrupo=idgrupo join professor on fkprofessor=idprofessor;