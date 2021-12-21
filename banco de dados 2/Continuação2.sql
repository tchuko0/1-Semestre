-- Criar um banco de dados chamado Personal
create database continuada2;

-- Selecionar esse banco de dados.
use continuada2;

-- Criar as tabelas correspondentes à sua modelagem.
create table aluno(
idAluno int primary key auto_increment,
nomeAluno varchar(45),
dataNasc date,
tipoAluno varchar(45),
constraint tipoAluno check (tipoAluno = 'iniciante' or tipoAluno = 'intermediario' or tipoAluno = 'avançado')
) auto_increment 1000;

create table personal(
idPersonal int primary key auto_increment,
nomePersonal varchar(45),
areaAtuacao varchar(45),
constraint areaAtuacao check (areaAtuacao = 'musculação' or areaAtuacao = 'pilates' or areaAtuacao = 'boxe'),
salario int
)auto_increment 1;
--------------------
-- Inserir dados nas tabelas, de forma que exista mais de um aluno para algum personal. Pelo menos 3 inserções para cada tabela.
insert into aluno (nomeAluno, dataNasc,tipoAluno) values
('Dener Cardozo', '1998-02-08', 'intermediario'),
('Diego Cardozo', '1994-05-25', 'avançado'),
('Robson Cesar', '1969-02-03', 'intermediario');

insert into personal (nomePersonal, areaAtuacao, salario) values
('Danilo Souza', 'boxe', 2500),
('Karen Freitas', 'pilates', 3500),
('Viviane lucia', 'pilates', 2550);


-------------------
-- Exibir todos os dados de cada tabela criada, separadamente.
select * from aluno;
select * from personal;

-------------------
-- Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação.

alter table Aluno
	add fkPersonal int;
    
alter table aluno 
	add constraint 
		foreign key (fkPersonal) 
			references personal(idPersonal);

--------------------            

-- atualizar dados 

update aluno 
	set fkPersonal = 1 
		where idAluno = 1000;
        
update aluno 
	set fkPersonal = 1 
		where idAluno = 1001;

update aluno 
	set fkPersonal = 2 
		where idAluno = 1002;     
        
 -------------------
  -- Exibir os dados dos personals e os dados de seus respectivos alunos
  
  select * 
	from personal 
		join aluno 
			on fkPersonal=(idpersonal) 
				where idPersonal = 1;
 
  select * 
	from personal 
		join aluno 
			on fkPersonal=(idpersonal) 
				where idPersonal = 2; 
                
--  Exibir os dados de um determinado personal (informar o nome do personal na consulta) e os dados de seus respectivos alunos. 

select personal.nomePersonal, aluno.* 
	from personal 
		join aluno 
			on fkPersonal=(idPersonal) 
				where idPersonal = 1;      

-- Exibir apenas o nome do aluno e o nome do seu respectivo personal.

  select personal.nomePersonal, aluno.nomeAluno
	from personal 
		join aluno 
			on fkPersonal=(idPersonal) 
				where idPersonal = 2;

-- Atualizar o personal de um determinado aluno    
update aluno
	set fkPersonal = 2 
		where idAluno = 1001;      

-- Atualizar a data de nascimento de um determinado aluno.  
update aluno 
	set dataNasc = '1998-07-06'
		where idAluno = 1001;

-- Deletar um determinado aluno ou um determinado personal.     
delete from aluno 
	where idAluno = 1001; 

--  Utilizar pelo menos 2 funções matemáticas utilizando o campo salario (MAX, MIN, COUNT, AVG, SUM, GROUP BY).
select max(salario) 	
	from personal group by salario;

select min(salario) 
	from personal;


