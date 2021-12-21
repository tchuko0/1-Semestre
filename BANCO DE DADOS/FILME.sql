create database filme;

use filme;

create table filmes(

IDfilme int primary key,
filme varchar(25),
genero varchar(25),
diretor varchar(25)
);

select * from filmes;

insert into filmes (IDfilme, filme, genero, diretor) values (0000, "Constantine", "Terror","Francis Lawrence" );

insert into filmes (IDfilme, filme) values (1111, "anjos e demonios" );

insert into filmes (filme, IDfilme) values ("Homem aranha" , 2222 );

insert into filmes (IDfilme, filme) values (8888,"Eu sou a lenda" );

insert into filmes (IDfilme, filme) values (090909,"Dracula" );

insert into filmes (IDfilme, filme) values (5555,"Corinthians" );

select * from filmes;


select * from filmes where IDfilme = 1111;
select * from filmes where filme = "corinthians";

update filmes set genero = "historia" where IDfilme = 5555; 
update filmes set genero = "terror" where IDfilme = 8888;

select * from filmes where filme like "a_j%";

select * from filmes where filme like "%a"; 

select * from filmes where filme like  "a%";

select * from filmes where filme like "_n%";

select * from filmes where IDfilme like "2%";

update filmes  set genero = "ação" where IDfilme = "2222"; 




update filmes set diretor = "Robson" where IDfilme = "5555";

update filmes set genero = "terror/ação" where IDfilme = "1111";

update filmes set diretor = "Gustavo" where IDfilme ="2222";

update filmes set diretor = "Diego" where IDfilme = "8888";

update filmes set diretor = "Dener" where IDfilme = "1111";

update filmes set diretor = "Danilo" where IDfilme = "5555";
	
delete from filmes where IDfilme = 2222;

alter table filmes add column homem_aranha varchar (24);
 

 update filmes set diretor = 'douglas cardozo'where IDfilme = 1111 or IDfilme = 8888;

 update filmes set diretor = 'robson cesar'where IDfilme in (1111,8888);

alter table filmes add ano int;
alter table filmes add ator varchar (25);

 update filmes set ano = 1998, ator = "eu" where IDfilme in (0);

alter table filmes modify filme varchar(72);

desc filmes;
describe filmes;

select * from filmes;

alter table filmes drop column ano;

alter table filmes drop column ator;

alter table filmes drop homem_aranha;

select * from filmes order by diretor desc ;
