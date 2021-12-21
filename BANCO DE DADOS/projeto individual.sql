create database bd_projeto_ind;

use bd_projeto_ind;

create table tb_cadastro (
id_cadastro int primary key auto_increment,
nome varchar (45),
login varchar (45),
senha varchar (45)
);


CREATE TABLE musica (
idMusica INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
titulo VARCHAR(50),
vezesOuvidaGeral INT,
artista VARCHAR(50)
) AUTO_INCREMENT  = 0;

CREATE TABLE vezesOuvida (
fkMusica INT,
fkCadastro INT,
vezesOuvida INT,
FOREIGN KEY (fkMusica) REFERENCES musica (idMusica),
FOREIGN KEY (fkCadastro) REFERENCES tb_cadastro (id_cadastro)
); 


CREATE TABLE playlist (
fkMusica INT,
fkCadastro INT,
FOREIGN KEY (fkMusica) REFERENCES musica (idMusica),
FOREIGN KEY (fkCadastro) REFERENCES tb_cadastro (id_cadastro)
); 


select sum(vezesOuvida) as soma from vezesOuvida where fkCadastro= 1;

select vezesOuvida from vezesOuvida where fkCadastro=1  order by vezesOuvida desc;

select vezesOuvida, titulo from vezesOuvida join musica on 
	fkMusica = idMusica where fkCadastro = 1 order by vezesOuvida desc;
    
select login from tb_cadastro;

select artista from vezesOuvida join musica on 
	fkMusica = idMusica where fkCadastro = 1 order by vezesOuvida desc;

select  * from tb_cadastro;
select * from usuario;
select * from musica;
select * from vezesOuvida;
select * from playlist;


-- drop database bd_projeto_ind; 

insert into musica (titulo, vezesOuvidaGeral, artista)
values ('Meu lugar',  0, 'Arlindo Cruz'), ('Será que é amor',  0, 'Arlindo Cruz'), ('O bem',  0, 'Arlindo Cruz'), 
 
('Vou vestejar',  0, 'Beth Carvalho'), ('Meu guri',  0, 'Beth Carvalho'), ('Dor do amor',  0, 'Beth Carvalho'),
 
 ('A carta',  0, 'Exaltasamba'), ('Minha dor',  0, 'Exaltasamba'), ('Vejo a lua',  0, 'Exaltasamba'), 
 
 ('Jesus chorou',  0, 'Racionais'), ('Sou + você',  0, 'Racionais'), ('Negro drama',  0, 'Racionais'), 
 
  ('Verdadeira chama',  0, 'Fundo de quintal'), ('Vem pra mim',  0, 'Fundo de quintal'), ('Livre pra sonhar',  0, 'Fundo de quintal'),
 
   ('Never gonna let you go',  0, 'Blackstreet'), ('No Diggity',  0, 'Blackstreet'), ('Don_t leave me',  0, 'Blackstreet');