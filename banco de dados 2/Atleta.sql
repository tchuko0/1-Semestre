create database ATLETAS;

use ATLETAS;

create table atleta(
id_atleta int primary key auto_increment,
nome_atleta varchar (40),
modalidade varchar (40),
qtdMedalhas int
);

insert into atleta values 
(null,'Ronaldo Nazario','Futebol',5),
(null,'Edson Arandes','Futebol',10),
(null,'Giba','Volei',3),
(null,'Dante','Volei',4),
(null,'Guga','Tenis',2),
(null,'Djokovic','Tenis',1);

-- todos os dados
select * from atleta;

-- nome e qtdMedalhas dos atletas
select nome_atleta, qtdMedalhas from atleta;

-- atletas de uma modalidade
select * from atleta where modalidade = 'Futebol';

-- modalidade crescente
select * from atleta order by modalidade asc;

-- medalhas decrescente
select * from atleta order by qtdMedalhas desc;

-- nome dos atletas que tenham S
select nome_atleta from atleta
		where nome_atleta like '%s%';
        
-- nome que comece com uma determinada letra
select nome_atleta from atleta
		where nome_atleta like 'R%';
        
-- ultima letra de um determinado nome 
select nome_atleta from atleta
		where nome_atleta like '%o';
        
-- penultima letra de um nome
select nome_atleta from atleta
		where nome_atleta like '%b_';
        
 -- conceito de renomear (RENEME COLUMN)alter table
 alter table atleta 
		RENAME COLUMN id_atleta to idAtleta;  
 
 -- modificar algo na table (modify)
 alter table atleta 
		modify nome_atleta varchar (75);
 
 -- adicionar campo (add column)
 alter table atleta 
		add column data_nascimento date;
        
-- atualizar dado da tabela (updade)
update atleta 
		set data_nascimento ='1998-02-27' where  idAtleta = 2;
        
update atleta
		set data_nascimento = '1970-07-19' where idAtleta = 1;
        
update atleta
		set data_nascimento = '1999-09-15' where idAtleta = 3;
        
update atleta
		set data_nascimento = '1988-05-19' where idAtleta = 4;
        
 
 update atleta
		set data_nascimento = '1976-11-09' where idAtleta = 5;
 
 
 update atleta
		set data_nascimento = '1999-12-10' where idAtleta = 6;
        
        
-- deletar (delete)

delete from atleta where idAtleta = 6;

-- truncate limpa os insert
truncate table atleta;


        
 -- Descrição da tabela 
 describe atleta;
        
drop table atleta;


