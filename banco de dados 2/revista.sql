create database revista;

use revista;

create table tb_revista(
IDrevista int primary key auto_increment,
nome varchar (40),
categoria varchar (30)
)auto_increment = 100;

insert into tb_revista values 
(null,'Veja',null),
(null,'Band',null),
(null,'LanceNet',null),
(null,'O globo',null);

select * from tb_revista;

update tb_revista 
		set categoria = 'Noticia' where IDrevista = '100';
        
update tb_revista 
		set categoria = 'Noticia'where IDrevista = '101';

update tb_revista
		set categoria = 'Esporte' where IDrevista = '102';
        
update tb_revista
		set categoria = 'Jornalismo' where IDrevista = '103';
        
select * from tb_revista;

insert into tb_revista values
(null,'Vogue','Entretenimento'),
(null,'BandSport','Esporte'),
(null,'Uol','Entretenimento');

select * from tb_revista;

desc tb_revista;

alter table tb_revista
		modify categoria varchar(50);

describe tb_revista;

alter table tb_revista 
		add periocidade varchar(40);
        
select * from tb_revista;

alter table tb_revista 
		drop periocidade;


drop database revista;
        
