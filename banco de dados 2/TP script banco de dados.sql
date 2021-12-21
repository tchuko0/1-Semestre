create database TP_script_banco_de_dados;

use TP_script_banco_de_dados;

create table cadastro(
idCadastro int primary key auto_increment,
CNPJ char(14),
nomeEmpresa varchar(50),
email varchar (45),
contato char(13),
cep char(9),
num_endereco varchar(10)
)auto_increment 100;


create table login (
idLogin int primary key auto_increment,
email varchar(100),
senha varchar(100),
fkCadastro int,
foreign key (fkCadastro) references cadastro(idCadastro)
) auto_increment 200;


create table estacionamento(
idEstacionamento int primary key auto_increment,
nomeEstacionamento varchar(45),
qtdVagas int,
fkCadastro int,
foreign key (fkCadastro) references cadastro(idCadastro)
) auto_increment 300;

create table veiculo(
idVeiculo int primary key auto_increment,
tipoVeiculo varchar(45),
modeloVeiculo varchar(45),
corVeiculo varchar(45),
placaVeiculo char(7)
) auto_increment 400;

create table sensor(
idSensor int primary key auto_increment,
statusVaga int,
constraint checkVaga check (statusVaga = 1 or statusVaga = 0)
) auto_increment 500;

create table vagas(
idVagas int primary key auto_increment,
fkSensor int,
foreign key (fkSensor) references sensor (idSensor)
) auto_increment 600;

create table movimento(
idMovimento int primary key auto_increment,
dataHora_entrada datetime default current_timestamp,
dataHora_saida datetime default current_timestamp,
fkVaga int,
fkVeiculo int,
fkEstacionamento int,
foreign key (fkVaga) references vagas(idVagas),
foreign key (fkVeiculo) references veiculo(idVeiculo),
foreign key (fkEstacionamento) references estacionamento(idEstacionamento)
)auto_increment 700;

insert into cadastro (CNPJ,nomeEmpresa,email,contato,cep,num_endereco) values 
('12345678910111','Vaga certa','SagaCerta@gmail.com','1197804566','08470-710','100'),
('12131415161718','Sua Vaga','SuaVaga@gmail.com','1197804209','08470-600','150'),
('21222324252627','Parada 10','parada10@gmail.com','11951160848','08470-100','215'),
('31323334353637','PareAqui','Pareaqui@gmail.com','11962825252','08470-400','510'),
('41424344454647','Estacione já','estacioneja@gmail.com','11911335678','08470-867','90');

insert into login (email,senha,fkCadastro) values
('vagacerta@gmail.com','1234',100),
('SuaVaga@gmail.com','2468',101),
('parada10@gmail.com','1357',100),
('parada10@gmail.com','1020',102),
('estacioneja@gmail.com','2030',103);


insert into estacionamento (nomeEstacionamento, qtdVagas, fkCadastro) values
('Vaga certa' ,100 ,100),
('Sua Vaga' ,74 ,101),
('Parada 10' ,200 ,100),
('PareAqui' ,500 ,102),
('VEstacione já' ,300 ,103);

insert into sensor (statusVaga) values
( 1),
( 0),
( 0),
( 1),
( 0),
( 1),
( 0),
( 1),
( 0),
( 1);

insert into Veiculo (tipoVeiculo, modeloVeiculo, corVeiculo,placaVeiculo) values
('Carro','Chevrolet Astra','Cinza','FAB5556'),
('Moto', 'Triumph Tiger 1200','Branco','FAX2068'),
('Carro','Hyundai Elantra', 'Branco','JKL9921'),
('Carro','Ford Fusion Titanium','Preto','WER8821'),
('Carro','Honda Civic','Azul','SSG0012');

insert into vagas (idVagas, fkSensor) values
(100,500),
(101,501),
(102,502),
(103,503),
(104,504);

insert into movimento (fkVaga,fkVeiculo,fkEstacionamento) values 
(100,400,300);

--------------------------------------------------
select * from sensor;
select * from vagas;
select * from cadastro;
select * from login;
select * from estacionamento;
select * from veiculo;
select * from movimento;


select StatusVaga,nomeEstacionamento,tipoVeiculo,idVagas,modeloVeiculo
	from movimento 
		join vagas
			on fkVaga=(idVagas)
				join estacionamento
					on fkEstacionamento = (idEstacionamento)
						join sensor
							on fkSensor = (idSensor)
								join veiculo 
									on fkVeiculo = (idVeiculo);

drop database TP_script_banco_de_dados;