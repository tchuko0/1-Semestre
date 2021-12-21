create database gastosPessoais;

use gastosPessoais;

create table pessoa(
idPessoa int primary key auto_increment,
nome varchar(45),
dataNasc datetime,
profissao varchar(45)
);

create table gasto(
idgasto int primary key auto_increment,
dataa date,
valor int
) auto_increment 10;

insert into pessoa (nome,dataNasc,profissao) values
('Dener','1998-02-08 ','Analista de sistema'),
('Diego','1994-05-25 ','Seguraça do trabalho'),
('Douglas','1989-11-19 ','produtor de televisão'),
('Robson','1969-03-02  ','Funcionario publico');

insert into gasto (dataa,valor) values 
('2021-10-03 16:00', 1900),
('2021-11-03 16:00', 2900),
('2021-09-05 16:00', 4900),
('2021-07-01 16:00', 8900);

select* from pessoa;
select * from gasto;

select nome,profissao from pessoa where idpessoa = 1 ;

alter table gasto add fkpessoa int;
alter table gasto add constraint foreign key (fkpessoa) references pessoa(idpessoa);

update gasto set fkpessoa = 1 where idgasto = 10;
update gasto set fkpessoa = 2 where idgasto = 11;
update gasto set fkpessoa = 3 where idgasto = 12;
update gasto set fkpessoa = 4 where idgasto = 13;




select nome,valor from gasto join pessoa on fkpessoa=(idpessoa);

select nome,valor from gasto join pessoa on fkpessoa=(idpessoa) where idpessoa = 1;

update gasto set valor = 3000 where idgasto = 10;
update gasto set valor = 3500 where idgasto = 11;
update gasto set valor = 4000 where idgasto = 12;
update gasto set valor = 4500 where idgasto = 13;

delete from gasto where idgasto = 10;

desc gasto;
