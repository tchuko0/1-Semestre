create database bd_atleta;

use bd_atleta;

create table tb_atletas(
idAtleta int primary key,
nome varchar (25),
modalidade varchar (25),
qndMedalha int
);

insert into tb_atletas values
(1, "Pelé", "futebol" ,59 ),
(2, "Ronaldo", "futebol" ,19),
(3, "Dener", "futebol" ,0),
(4, "Giba", "volei" ,21),
(5, "Serginho", "volei" ,25),
(6, "Lucareli","volei",13),
(7, "Lebron","basquete",36),
(8, "Kobe","basquete",40),
(9, "Michael","basquente",45);

select nome, qndMedalha from tb_atletas;

select * from tb_atletas where modalidade = "futebol";
select * from tb_atletas order by modalidade;
select * from tb_atletas order by qndMedalha desc;
select * from tb_atletas where nome like "%S%";
select * from tb_atletas where nome like  "G_%";
select * from tb_atletas where nome like "%_o";
select * from tb_atletas where nome like "%d_";

select * from tb_atletas;

drop table tb_atletas;