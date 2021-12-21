create database bd_mk;

use bd_mk;

create table tb_cadastro (
id_cadastro int primary key auto_increment,
nome varchar (45),
login varchar (45),
senha varchar (45)
)auto_increment = 1000;

create table tb_rodada(
id_rodada int primary key auto_increment
);

create table tb_vezes_escolhido(
fk_usuario int,
foreign key (fk_usuario) references tb_cadastro (id_cadastro),
fk_personagem int,
foreign key (fk_personagem) references tb_personagem (idpersonagem),
vezes_escolhido int
);


create table tb_personagem(
idpersonagem int primary key auto_increment,
nome_personagem varchar (45),
vitalidade int,
poder varchar (45),
data_nascimento varchar (45)
);

create table tb_reino(
idreino int primary key auto_increment,
nome_reino varchar(45),
fundacao_reino varchar (45),
fk_personagem int,
foreign key (fk_personagem) references tb_personagem (idpersonagem)
)auto_increment = 20;

select  * from tb_cadastro;
select  * from tb_rodada;
select  * from tb_personagem;
select  * from tb_vezes_escolhido;

insert into tb_personagem values 
(1,"Scorpion","90","fogo",01/01/1988),
(2,"SubZero","90","gelo",03/06/1960),
(3,"Raiden","95","Trovão",10/10/1500),
(4,"Sindel","91","bruxaria",08/03/1700),
(5,"Kitana","89","leque",10/06/1900),
(6,"Millena","98","clone",11/03/1970),
(7,"Liu Kang","94","fogo",10/09/1960),
(8,"Shao kahn","95","super força",03/06/1700),
(9,"Goro","90","4 braços",03/06/1900),
(10,"Kung lao","90","tornado",03/06/1960),
(11,"Shang tsung","92","feitiçaria",10/10/1900),
(12,"Johnny cage","88","artes marciais",01/09/1985);
 

 
 insert into tb_reino values
 (20,"Earthrealm","ano 500",7),
 (21,"Earthrealm","ano 500",10),
 (22,"Earthrealm","ano 500",12),
 (23,"Earthrealm","ano 500",11),
 (24,"Edenia","ano 500",4),
 (25,"Edenia","ano 500",5),
 (26,"Netherrealm","ano 500",1),
 (27,"Outworld","ano 500",2),
 (28,"Outworld","ano 500",9),
 (29,"Outworld","ano 500",8),
 (30,"Outworld","ano 500",6),
 (31," Orderrealm","ano 500",3);

select * from tb_cadastro;
 
 
 drop database bd_mk;