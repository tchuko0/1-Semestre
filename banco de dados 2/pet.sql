create database bd_pet;

use bd_pet;

create table dono(
idDono int primary key auto_increment,
nomeDono varchar(45),
telFixo char(12),
telMovel char(12),
endereco varchar(40)
) auto_increment 1;

create table pet(
idPet int primary key auto_increment,
nomePet varchar(45),
tipoPet varchar(45),
raca varchar(45),
dataNascimento date,
fkDono int,
foreign key (fkDono) references dono(idDono)
) auto_increment 101;
----------------------------------------------
-- insert table Dono

insert into dono (nomeDono,telFixo,telMovel,endereco) values
('Dener Cardozo','62825252','951160848','Rua:Antonio Lucas: Cidade Tiradentes'),
('Diego Cardozo','22820525','997804566','Rua:Antonio Tadeo: Guaianases');

-- insert table pet

insert into pet (nomePet,tipoPet,raca,dataNascimento,fkDono) values
('Amora','Cachorro','Maltes','2020-03-01',1),
('Piruluto','Gato','Siames','2019-10-09',1),
('Preto','Cachorro','Vira lata','2018-02-10',2);
-----------------------------------------------

-- selects simples

select * from dono;
select * from pet;

-----------------------------------------------

-- alterar o tamanho da coluno nomeDono

alter table dono 
		modify nomeDono varchar(50); 
        
----------------------------------------------

-- selecionar todos os pets de um especifico tipo

select pet.*,nomeDono
	from dono
		join pet
			on fkDono = dono.idDono
				where tipoPet = 'Cachorro';
------------------------------------------------

-- nome e data de nascimento dos pets

select nomePet,dataNascimento from pet;

------------------------------------------------

-- selecionar os pets em order crescente

select * from pet 
		order by nomePet asc;

------------------------------------------------

-- selecionar os donos ordenados por bairro de forma decrecente

select * from dono 
		order by endereco desc;

------------------------------------------------

-- exibir os nomes dos pets que termine com uma letra especifica

select * from pet 
		where nomePet like '%_a';

-------------------------------------------------

-- exibir os clientes com o mesmo sobrenome

select * from dono 
		where nomeDono like '%cardozo%';

-------------------------------------------------

-- alterar telefone de um cliente

update dono 
		set telMovel = '997804209' 
				where idDono = 1; 

--------------------------------------------------

-- confirmar a alteração

select telMovel from dono;

---------------------------------------------------

-- exibir os donos de seus respectivos pets

select * 
	from dono 
		join pet	
			on fkdono = dono.idDono;

----------------------------------------------------

-- exibir dados de um respectivo dono e pet

select * 
	from dono	
		join pet
			on fkDono = dono.idDono
				where idDono = 1;
----------------------------------------------------

-- exclua algum pet

delete from pet 
		where idPet = 101;

---------------------------------------------------

-- confirmar exclusão

select * from pet;

---------------------------------------------------

-- excluir as tabelas

drop table Dono;
drop table pet;