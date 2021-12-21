create database Empresa;

use Empresa;

create table tb_empresa(
idEmpresa int primary key auto_increment,
nomeEmpresa varchar (50),
responsavel varchar(40)
) auto_increment = 10;

create table tb_aluno(
ra int primary key auto_increment,
nomeAluno varchar (50),
bairro varchar(40),
email varchar (40)
) auto_increment = 20;


insert into tb_empresa values 
(null,'Fleury','Maria'),
(null,'C6','Pedro'),
(null,'Tivit','Camila'),
(null,'Safra','Natalia');

insert into tb_aluno values 
(null,'Dener','Cidadetiradentes','Dcs169@gmail.com'),
(null,'Diego','Guaianases','Di169@gmail.com'),
(null,'Danilo','Itaquera','Dam169@gmail.com'),
(null,'Douglas','Sãomateus','Doug169@gmail.com');

select * from tb_empresa;

select * from tb_aluno;


select responsavel from tb_empresa;

select * from tb_empresa 
		order by nomeEmpresa;

select * from tb_empresa 
		order by responsavel desc;

select * from tb_empresa 
		where responsavel like '%r%';

select * from tb_empresa 
		where responsavel like 'M%';

select * from tb_empresa 
		where nomeEmpresa like '%_a';

update tb_empresa 
		set responsavel = 'Paulo' where idEmpresa = 11;

select * from tb_empresa;

delete from tb_empresa
		where idEmpresa = 11;

select * from tb_empresa;

drop table tb_empresa;

ALTER TABLE tb_aluno add fkEmpresa int;

alter table tb_aluno add 
		foreign key (fkEmpresa) references tb_empresa(idEmpresa);
        
update tb_aluno 
		set fkEmpresa = 10 where ra = 20;

update tb_aluno 
		set fkEmpresa = 12 where ra = 21;

update tb_aluno 
		set fkEmpresa = 12 where ra = 22;

update tb_aluno 
		set fkEmpresa = 13 where ra = 23;

select * from tb_aluno join tb_empresa 
on fkEmpresa = tb_empresa.idEmpresa 
where idEmpresa = 13;