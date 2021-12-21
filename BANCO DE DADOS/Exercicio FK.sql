create database bd_revista;

use bd_revista;

create table tb_revista(
idrevista int primary key auto_increment,
nome varchar (40),
categoria varchar (40),
ideditora int,
CONSTRAINT fk_RevEdi FOREIGN KEY (ideditora) REFERENCES tb_editora (ideditora)
)auto_increment = 1;

insert into tb_revista (nome,categoria)value 
('istoÉ',"noticias"),
("VEJA","fofoca"),
("amarelinho","emprego"),
("supremos","heroi");

select * from tb_revista;

update tb_revista set categoria = "NOTICIA" where idrevista = 1;
update tb_revista set categoria = "FOFOCA" where idrevista = 2;
update tb_revista set categoria = "EMPREGO" where idrevista = 3;
update tb_revista set categoria = "HEROI" where idrevista = 4;

insert into tb_revista (nome,categoria) value 
("Guerra civil","quadrinhos"),
("Palmirinha","Receita"),
("jogos","games");

describe tb_revista;

alter table tb_revista modify categoria varchar (50);

describe tb_revista;

alter table tb_revista add column periocidade varchar (40);

select * from tb_revista;
 
alter Table tb_revista DROP COLUMN periocidade;

select * from tb_revista;




create table tb_editora(
ideditora int primary key auto_increment,
nome_editora varchar(40),
data_fundação datetime
)auto_increment = 1000;

insert into tb_editora (nome_editora,data_fundação)value
("Martins Fontos","1970/08/02"),
("Globo","1977/08/22"),
("Souza","1910/08/23"),
("Cardozo","1988/08/21"),
("Cezar","1912/02/21"),
("Silva","1914/05/18"),
("Meu Brasil","1998/08/02");

select * from tb_editora;

select * from tb_revista;

update tb_revista set ideditora = "1000" where idrevista = "1";
update tb_revista set ideditora = "1001" where idrevista = "2";
update tb_revista set ideditora = "1002" where idrevista = "3";
update tb_revista set ideditora = "1003" where idrevista = "4";
update tb_revista set ideditora = "1004" where idrevista = "5";
update tb_revista set ideditora = "1005" where idrevista = "6";
update tb_revista set ideditora = "1006" where idrevista = "7";

select nome, ideditora from tb_revista;
select nome from tb_revista where ideditora like "1005";

drop table tb_revista;
drop table tb_editora;


