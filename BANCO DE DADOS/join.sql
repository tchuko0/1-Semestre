create database bd_empresa;

use bd_empresa;

create table tb_empresa(
id_empresa int primary key auto_increment,
nome_empresa varchar (45),
seguimento varchar (45)
);

create table tb_departamento(
id_departamento int primary key auto_increment,
nome_departamento varchar (45)
)auto_increment = 20;

create table tb_funcionario(
id_funcionario int primary key auto_increment,
nome_funcionario varchar (45),
funcao varchar (45),
fk_empresa int,
foreign key (fk_empresa) references tb_empresa(id_empresa),
fk_chefe int,
foreign key (fk_chefe) references tb_funcionario(id_funcionario),
fk_departamento int,
foreign key (fk_departamento) references tb_departamento(id_departamento)
)auto_increment = 10;

insert into tb_empresa values 
(1,"Quality","tecnologia"),
(2,"Premier","telefonia"),
(3,"Planet","saude");

insert into tb_departamento values
(20,"informatica"),
(21,"consultoria"),
(22,"markting");

insert into tb_funcionario values
(14,"Robson","lider tecnico",1,null,20),
(15,"Viviane","lider tecnico",2,null,21),
(16,"rogerio","lider tecnico",3,null,22);



insert into tb_funcionario values
(10,"Dener","tecnico em informatica",1,14,20),
(11,"Diego","suporte tecnico",1,14,20),
(12,"Gustavo","sac N1",2,15,21),
(13,"Karen","DBA",3,16,22);

update tb_funcionario set fk_chefe = "14" where id_funcionario = "10";
update tb_funcionario set fk_chefe = "15" where id_funcionario = "11";
update tb_funcionario set fk_chefe = "16" where id_funcionario = "12";
update tb_funcionario set fk_chefe = "16" where id_funcionario = "13";


select * from tb_funcionario
right join tb_empresa
on fk_empresa = tb_funcionario.id_funcionario;

select * from tb_empresa
left join tb_funcionario
on fk_empresa = tb_funcionario.id_funcionario;

select * from tb_empresa
join tb_funcionario
on fk_empresa = tb_empresa.id_empresa;





drop database bd_empresa;