create database funcionario_endereco;

use funcionario_endereco;

create table funcionario(
idFuncionario int primary key auto_increment,
nomeCompleto varchar(45),
telFixo varchar(20),
telMovel varchar(20),
salario decimal(8,5)
constraint salario check (salario >=0)
) auto_increment 10;

create table endereco(
rua varchar(45),
cep char(9),
numero varchar(10),
fkFuncionario int,
foreign key(fkFuncionario) references funcionario(idFuncionario)
);

insert into funcionario (nomeCompleto,telFixo,telMovel,salario) values
('Dener Cardozo de Souza','2282-5252','951160848',100.000),
('Danilo Souza','2282-5252','951160848',100.000);

insert into endereco (rua, cep, numero, fkFuncionario) values
('Antonio Lucas','08470-710','169',10),
('Frencisco Paulick','08470-600','255',11);

select * from endereco;
select * from funcionario;

select *
	from
		funcionario
			join
				endereco	
					on fkFuncionario=idFuncionario;
                    
alter table funcionario add email varchar(45);
alter table funcionario add email_prof varchar(45);

update funcionario set email = 'Dener169@gmail.com' where idFuncionario = 10;
update funcionario set email = 'Dam169@gmail.com' where idFuncionario  = 11;

update funcionario set email_prof = 'Dener.prof169@gmail.com' where idFuncionario = 10;
update funcionario set email_prof = 'Dam.prof169@gmail.com' where idFuncionario  = 11;

update funcionario set telFixo = '2556-0998' where idFuncionario = 11;
update funcionario set telMovel = '95754-8678' where idFuncionario = 11;