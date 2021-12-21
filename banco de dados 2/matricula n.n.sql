CREATE DATABASE EscolaIdiomas;

use EscolaIdiomas;

CREATE TABLE Aluno (
ra int primary key auto_increment,
nomeAluno varchar(45),
bairro varchar(45)
)auto_increment=1000;

CREATE TABLE Curso (
idCurso int primary key auto_increment,
nomeCurso varchar(45),
coordenador varchar(45)
);

CREATE TABLE Matricula (
fkRa int,
foreign key (fkRa) references Aluno(ra),
fkCurso int,
foreign key (fkCurso) references Curso(idCurso),
dtInicio date,
primary key(fkRa, fkCurso, dtInicio),
media decimal(4,2),
nivel char(2)
);

select * from Aluno;

insert into Aluno values (null, 'Eduardo', 'Centro'),
						(null, 'Luiza', 'Consolação'),
                        (null, 'Pedro', 'Paraíso'),
                        (null, 'Ana', 'Pinheiros'),
                        (null, 'Bruna', 'Mogi das Cruzes');
                        
select * from Curso;

insert into Curso values (null, 'Inglês', 'Zé'),
						(null, 'Espanhol', 'Zazá'),
                        (null, 'Mandarim', 'Zilu');
                
-- Exibir os dados de cada tabela separadamente.
select * from Matricula;
select * from Aluno;
select * from Curso;

insert into Matricula values 
	(1000, 1, '2020-11-09', 5.6, 'B1'),
    (1001, 1, '2020-11-09', 8.3, 'A1'), 
    (1002, 2, '2020-05-11', 7.6, 'B2'),
    (1001, 3, '2020-11-09', 5.6, 'B1'); 
    
-- Exibir os dados dos alunos e dos cursos correspondentes.
select nomeAluno, nomeCurso, nivel 
	from Aluno join Matricula on fkRa = ra
    join Curso on fkCurso = idCurso;
  
-- Exibir os dados dos alunos, mas somente de um curso. 
select nomeAluno, nomeCurso, nivel 
	from Aluno join Matricula on fkRa = ra
    join Curso on fkCurso = idCurso
    where nomeCurso = 'Mandarim';

-- Exibir os dados de um aluno e os dados dos cursos desse aluno.
select nomeAluno, nomeCurso, nivel 
	from Aluno join Matricula on fkRa = ra
    join Curso on fkCurso = idCurso
    where nomeAluno = 'Luiza';

-- Exibir a soma das médias e a média das médias.
select sum(media) as 'Soma das Médias', avg(media) as 'Média das médias'
	from Matricula;
select sum(media) as 'Soma das Médias', truncate(avg(media),2) as 'Média das médias'
	from Matricula;
    
-- Exibir a maior e a menor média.
select min(media) as 'Média mínima', max(media) as 'Média máxima'
	from Matricula;
    
-- Exibir a maior e a menor média agrupado por curso.
select nomeCurso, min(media) as 'Média mínima', max(media) as 'Média máxima'
	from Matricula join Curso on fkCurso = idCurso group by nomeCurso;

-- Exibir a maior e a menor média agrupado por aluno.
select nomeAluno, min(media) as 'Média mínima', max(media) as 'Média máxima'
	from Matricula join Aluno on fkRa = ra group by nomeAluno;
    
-- Exibir apenas as médias da tabela Matricula.
select media from matricula;

-- Exibir as médias distintas da tabela Matricula.
select distinct media from matricula;

-- Exibir a quantidade de médias da tabela Matricula.
select count(media) as 'Quantidade de médias' from matricula;

-- Exibir a quantidade de médias distintas da tabela Matricula.
select count(distinct media) as 'Quantidade de médias distintas' from matricula;

-- o código abaixo está incorreto, o dintinct precisa estar dentro dos parênteses
-- select distinct count(media) as 'Quantidade de médias distintas' from matricula;
 
-- Exibir todos alunos matriculados e todos os alunos não matriculados
select nomeAluno, nomeCurso, nivel 
	from Aluno left join Matricula on fkRa = ra
    left join Curso on fkCurso = idCurso;
    
-- Exibir apenas os alunos não matriculados
select nomeAluno
	from Aluno left join Matricula on fkRa = ra
    left join Curso on fkCurso = idCurso
    where idCurso is null;
    
-- Inserindo um Curso onde não terá nenhum aluno matriculado
insert into Curso values (null, 'Francês', 'Percy');

-- Exibir apenas os cursos onde não existe aluno matriculado
select nomeCurso
	from Aluno right join Matricula on fkRa = ra
    right join Curso on fkCurso = idCurso
    where ra is null;

-- Bons estudos!