drop database bd_pais;
create database  bd_pais;

use bd_pais;

-- creates
create table tb_pais (
    id_pais int primary key auto_increment,
    nome varchar(20),
    moeda varchar(20),
    area varchar(20),
    populacao varchar (25)
);

create table tb_modalidade (
    id_modalidade int primary key auto_increment,
    nome varchar (30),
    premiacao varchar (30),
    origem varchar (30),
    popularidade varchar (30)
);

create table tb_atleta(
    id_atleta int primary key auto_increment,
    nome varchar (30),
    idade varchar (10),
    nacionalidade varchar (20),
    medalhas varchar (20),
    fk_Pais int,
    fk_Modalidade int
);

-- alters
alter table tb_atleta add FOREIGN KEY (fk_Pais) references tb_pais(id_pais);
alter table tb_atleta add FOREIGN KEY (fk_Modalidade) references tb_modalidade(id_modalidade);

-- inserts
insert into  tb_pais (nome,moeda,area,populacao) values 
("Brasil","Real","8.516.000 km²","209,5 milhões"),
("Jamaica","Dólar jamaicano","10.991 km²","2,935 milhões"),
("argentina","Peso argentino","2.780.000 km²","44,49 milhões");

insert into  tb_modalidade (nome,premiacao,origem,popularidade) values 
("futebol","Trofel","China","98%"),
("Atletismos","Medalha","Bolivia","60%"),
("Natação","Medalha","EUA","50%");

insert into  tb_atleta (nome,idade,nacionalidade,medalhas,fk_modalidade,fk_pais) values 
("ayrton senna","34 anos","Brasileiro","80",1,1),
("Usain Bolt","34 anos","Jamaicano","8",2,3),
("Hernan Crespo","45 anos","Argentina","4",3,2);

-- selects
select 
    a.*,
    p.nome,
    p.moeda 
from tb_atleta a
join tb_pais p on a.fk_pais = p.id_pais;

select 
    a.nome,
    a.idade,
    p.nome "pais"
from tb_atleta a
join tb_pais p on a.fk_pais = p.id_pais;

-- Regra de negocio 
/*
O RELACIONAMENTO FOI FEITO ENTRE A TABELA PAIS COM ATLETA
ATRAVEZ DA FK ATLETA LIGADO A MODALIDADE ATRAVES DO MESMP PROCESSO
 */