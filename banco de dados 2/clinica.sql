create database bd_clinica;

use bd_clinica;
 
create table medico(
crm int primary key auto_increment,
nomeMedico varchar(45),
especialidade varchar(45),
cel char(12)
) auto_increment 123456;


 
create table paciente(
idpaciente int primary key auto_increment,
nomePaciente varchar(45),
celular char(12),
endereco varchar(100),
fkmedico int,
foreign key (fkmedico) references medico(crm)
) auto_increment 10;

-- alter table paciente add fkMedico int;

-- alter table paciente add constraint foreign key (fkmedico) references medico.crm; 

create table consulta(
fkpaciente int,
fkmedico int,
dataHora datetime,
foreign key (fkpaciente) references paciente(idpaciente),
foreign key(fkmedico) references medico(crm),
primary key(dataHora,fkpaciente,fkmedico) 
) auto_increment 100;

select * from medico;
select * from paciente;
select * from consulta;

insert into medico values
(123456,'Karen Freitas','Biomedica','11951160848');

insert into paciente (nomePaciente,celular,endereco,fkmedico) values
('Dener Cardozo','11964053713','Rua Antonio lucas',123456);

insert into consulta values 
(10,123456,'2021-10-03 16:00');

select paciente.nomePaciente, medico.nomeMedico,medico.especialidade,consulta.dataHora 
	from paciente
		join medico 
			on fkmedico =(crm)
				join consulta
					on dataHora = (dataHora);



drop database bd_clinica;
