create database musica;

use musica;
------------------------------------------------
create table tb_musica (
idMusica int primary key auto_increment,
titulo varchar (40),
artista varchar(40),
genero varchar (40),
fkalbum int,
foreign key (fkalbum) references tb_album(idalbum)
);

create table tb_album(
idalbum int primary key auto_increment,
nome_album varchar(45),
gravadora varchar(45)
)auto_increment = 10;
--------------------------------------------------------
insert into tb_musica values 
(null,'Primavera','belo','samba',10),
(null,'Só voce','belo','samba',10),
(null,'naticongo','natiruts','reggae',11),
(null,'no mar','natiruts','reggae',11),
(null,'chocolate','tim maia','mpb',12),
(null,'azul da cor do mar','tim maia','mpb',12),
(null,'so por uma noite','cbjr','rock',13),
(null,'lugar ao sol','cbjr','rock',13);

insert into tb_album values 
(null, 'Pra ver o sol brilhar','Sunset Sound '),
(null, 'Lual MTV','Studios 301 '),
(null, 'Que beleza','Tuff Gong '),
(null, 'Acustico MTV','Hansa Tonstudio ');
--------------------------------------------------
-- todos os dados
select * from tb_musica;
--------------------------------------------
-- nome e genero da musica
select artista,genero from tb_musica;

-- musicas por genero 
select * from tb_musica 
	where genero = 'samba';
    
-- musica por artista
select * from tb_musica 
	where artista = 'cbjr';
    
-- ordenados pelo titulo 
select * from tb_musica
	order by titulo;
    
-- ordenados pelo titulo decrescente
select * from tb_musica
	order by titulo desc;
    
-- comece por uma determinada letra
select * from tb_musica 
	where titulo like 'l%';
    
-- termine com uma determinada letra
select * from tb_musica
	where titulo like '%e';
    
 -- segunda letra de uma musica
 select * from tb_musica
	where titulo like '_o%';
    
-- penultima letra 
select * from tb_musica
	where titulo like  '%c_';
    
-- JOIN----------------------------------------------------------------

-- exibir os dados das musicas e albuns correspondentes
select * from tb_musica join tb_album 	
    on fkalbum = tb_album.idalbum;
    
-- exibir dados das musicas e album de um determinado album    
select tb_musica.titulo, tb_album.nome_album 
	from tb_musica join tb_album
    on fkalbum = tb_album.idalbum where idalbum = 10;

-- exibir dados das musicas e album de uma determinada gravadora      
    select * from tb_musica join tb_album
    on fkalbum = tb_album.idalbum where gravadora = 'Sunset Sound ' ;
    
drop database musica;    