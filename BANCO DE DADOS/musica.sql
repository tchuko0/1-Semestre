create database bd_musica;

use bd_musica;

create table tb_musica (
idmusica int primary key,
titulo varchar (20),
artista varchar(20),
genero varchar(20)
);

insert into tb_musica values
(1,"Supera","Belo","samba"),
(2,"Frasco pequeno","Fundo de quintal","samba"),
(3,"Perfume","Belo","Samba"),
(4,"Vem me ver","Furrueiros","forró"),
(5,"Tudo Azul","Circulador","forró"),
(6, "Descomunal","Reel","Rap"),
(7,"Maria Maria","Elis Regina","MPB");

select titulo, artista from tb_musica;
select * from tb_musica where genero = "MPB";
select * from tb_musica where artista = "Belo";
select * from tb_musica order by titulo;
select * from tb_musica order by titulo desc;
select * from tb_musica where titulo like "S_%";
select * from tb_musica where artista like "%_o";
select * from tb_musica where genero like "_a%";
select * from tb_musica where titulo like "%e_";

drop table tb_musica;

select * from tb_musica;
 