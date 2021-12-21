create database bd_mortal_kombat;

use bd_mortal_kombat;

-- creates

create table tb_personagem(
idpersonagem int primary key auto_increment,
nome_personagem varchar(45),
poder varchar (45),
idade varchar (45),
vitalidade int
)auto_increment = 100;

create table tb_fatality(
idfatality int primary key auto_increment,
nome_fatality varchar (45),
tipo_fatality varchar (45),
acao_fatality varchar (45),
CHECK (acao_fatality = 'fisico' or acao_fatality = 'magico'),
estilo_fatality varchar (45),
fk_personagem int,
foreign key (fk_personagem) references tb_personagem (idpersonagem)
);

-- inserts

insert into tb_personagem values 
(null, "Scorpion", "fogo", "32 anos", "90"),
(null, "SubZero", "Gelo", "33 anos", "90"),
(null, "Raiden", "Trovão", "10.000 anos", "94" ),
(null, "Rain", "Agua", "9.000 anos", "87" ),
(null, "Noob", "Sombra", "39 anos", "90" );

insert into tb_fatality values
(null, "Tosty", "fogo", "magico", "Fatality",100),
(null, "O bravo", "fogo", "fisico", "brutality", 100),
(null, "Bed of Ice", "Gelo", "magico", "Fatality", 101),
(null, "soco de gelo", "Gelo", "fisico", "Brutality", 101),
(null, "grandes raios", "Gelo", "fisico", "Brutality", 102),
(null, "Deus do trovão", "Gelo", "magico", "fatality", 102),
(null, "Principe de Hedenia", "Agua", "magico", "Fatality", 103),
(null, "dominador das aguas", "Agua", "fisico", "Brutality", 103),
(null, "rei das sombras", "sombra", "fisico", "Brutality", 104),
(null, "portal da sombra", "sombra", "magico", "fatality", 104);

-- selects

select * from tb_fatality f 
join tb_personagem  
on f.fk_personagem = tb_personagem.idpersonagem;

select * from tb_fatality f 
join tb_personagem  
on f.fk_personagem = tb_personagem.idpersonagem 
where tb_personagem.idpersonagem =100;

select * from tb_personagem; 
select * from tb_fatality; 

select min(vitalidade) from tb_personagem;
select max(vitalidade) from tb_personagem;
select avg(vitalidade) from tb_personagem;
select sum(vitalidade) from tb_personagem;
select * from tb_personagem order by nome_personagem desc;
select * from tb_personagem order by nome_personagem asc;
select count(*) from tb_personagem;

drop database bd_mortal_kombat;