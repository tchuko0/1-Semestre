create database relacionamento;

use relacionamento;

create table tb_aluno (
ra int primary key auto_increment,
nome_aluno varchar (45),
tel_aluno varchar (15),
fk_projeto int,
foreign key (fk_projeto) references tb_projeto(idProjeto)
);

create table tb_projeto(
idProjeto int primary key auto_increment,
nome_projeto varchar (45),
descricao_projeto varchar (45)
)auto_increment = 10;

create table tb_acompanhante(
idAcompanhante int primary key auto_increment,
nome_acompanhante varchar (45),
tipo_relacao varchar (20),
fk_aluno int,
foreign key (fk_aluno) references tb_aluno(ra)
)auto_increment = 200;

create table tb_representante (
id_representante int primary key auto_increment,
nome_representante varchar (45),
fk_representa int,
foreign key (fk_representa) references tb_aluno(ra)
);



insert into tb_aluno values 
(null,"Gustavo","1234-12345",10),
(null,"Robson","2468-10123",10),
(null,"Viviane","1416-18201",10),
(null,"Danilo","3458-80976",11),
(null,"Karen","1133-44444",11);

insert into tb_projeto values
(null,"Termosense","controle de temperatura"),
(null,"Motal komabt","site do jogo");

insert into tb_acompanhante values
(null,"Giovanna","prima",1),
(null,"Thais","prima",4),
(null,"vitor","primo",5);

insert into tb_representante values
(null,"Diego",1),
(null,"Diego",2),
(null,"Diego",3),
(null,"Diego",4),
(null,"Diego",5);


drop database relacionamento;

select * from tb_aluno;
select * from tb_projeto;
select * from tb_acompanhante;
select * from tb_representante;

select nome_aluno,nome_projeto from tb_aluno
join tb_projeto
on fk_projeto = tb_projeto.idprojeto;

select nome_aluno,nome_acompanhante from tb_aluno
join tb_acompanhante
on fk_aluno = tb_aluno.ra;

select nome_aluno,nome_representante from tb_aluno
join tb_representante
on fk_representa = tb_aluno.ra;

select nome_aluno,nome_projeto from tb_aluno
join tb_projeto
on fk_projeto = tb_projeto.idProjeto where tb_projeto.idProjeto = 10;