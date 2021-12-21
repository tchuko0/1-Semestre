create database elenco;

use elenco;

create table Diretor (
idDiretor int primary key auto_increment,
nomeDiretor varchar(45),
pais varchar(45)
);

create table Filme (
idFilme int primary key auto_increment,
nomeFilme varchar(45),
genero varchar(45),
fkDiretor int, 
	foreign key (fkDiretor) references Diretor(idDiretor)
) auto_increment = 1000;

create table Ator (
idAtor int primary key auto_increment,
nomeAtor varchar(45),
dtNasc date
) auto_increment = 100;

create table Personagem (
fkAtor int,
foreign key (fkAtor) references Ator(idAtor),
fkFilme int,
foreign key (fkFilme) references Filme(idFilme),
primary key (fkAtor, fkFilme),
papel varchar(45),
ganho decimal(10,2)
);

-- INSERINDO DADOS NAS TABELAS
insert into Diretor(nomeDiretor,pais) value
('Seu zé', 'Brasil'),
('Moises', 'Argentina'),
('Karen', 'Estados Unidos');

insert into Filme(nomeFilme, genero, fkDiretor) values
('Exterminador do futuro', 'Ação', 1),
('Constantine', 'Terror', 2),
('Hitman', 'Suspense', 3),
('O céu pode esperar', 'Comédia', 1);

insert into Ator(nomeAtor, dtNasc) values
('Antonio', '1998-12-04'),
('Viviane', '1975-11-09'),
('Robson', '1969-02-03'),
('Danilo', '1989-08-31');

insert into Personagem values
(100, 1000, 'Protagonista', 4000),
(101, 1001, 'Coadjuvante', 2000),
(102, 1002, 'Protagonista', 3500),
(103, 1000, 'Coadjuvante', 2200);

-- EXIBINDO TODOS OS DADOS DAS TABELAS SEPARADAMENTE
select * from Diretor;
select * from Filme;
select * from Ator;
select * from Personagem;

-- Exibir dados dos diretores e seus filmes
select * from Diretor join Filme on fkDiretor = idDiretor;


-- exibir dados de um diretor
select * from Diretor join Filme on fkDiretor = idDiretor where nomeDiretor = 'Karen';

-- soma e media dos salario dos atores
select truncate(avg(ganho),2), sum(ganho) from Personagem;

-- minimo e maximo dos salarios
select max(ganho), min(ganho) from Personagem;

-- exibir os dados do filme e do ator
select * from Filme 
join Personagem 
on fkFilme = idFilme 
join Ator 
on fkAtor = idAtor;

-- exibir os dados dos filmes, personagem e atores de um filmes
select * from Filme
join Personagem 
on fkFilme = idFilme
join Ator on fkAtor = idAtor 
where nomeFilme = 'Hitman';
    
-- exibir dados dos filmes,diretos,atores,seus papeis e salarios
select * from diretor 
join Filme 
on fkdiretor = iddiretor 
join Personagem 
on fkFilme = idFilme
join Ator 
on fkAtor = idAtor;

-- exibir nome do filme, soma e media de salario agrupados por filme
select nomeFilme, sum(ganho) as 'Soma dos salarios', truncate(avg(ganho),2) as 'Média dos salarios'
from Filme 
join Personagem 
on fkFilme = idFilme 
group by nomeFilme;


-- exibir nome do ator, soma e media dos salarios agrupador por ator
select nomeAtor, sum(ganho) as 'Soma dos salarios', truncate(avg(ganho),2) as 'Media dos salarios'
from Ator 
join Personagem 
on fkAtor = idAtor 
group by nomeAtor;

-- exibir nome do filme,menor e maior salario agrupado por filme
select nomeFilme, min(ganho) as 'Minimo salario', max(ganho) as 'Salarios maximo'
from Filme
join Personagem 
on fkFilme = idFilme 
group by nomeFilme;
    
-- exibir nome do ator, menor e maior salario agrupados por ator
select nomeAtor, min(ganho) as 'Ganho mínima', max(ganho) as 'Ganho máxima'
from Ator 
join Personagem 
on fkAtor = idAtor 
group by nomeAtor;