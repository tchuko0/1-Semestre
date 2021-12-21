create database faculdade;

use faculdade;

create table tb_aluno(
RA char(8) primary key,
nome_aluno varchar (45),
bairro_aluno varchar (45),
email_aluno varchar (45)
);

insert into tb_aluno values 
('01211028','Dener','Cidade Tiradentes','Dener169@gmail.com');

insert into tb_aluno values 
('01221067','Danilo','Guainases','danilo169@gmail.com'),
('01221087','Diego','Itaquera','diego169@gmail.com'),
('01221018','Douglas','São Mateus','douglas169@gmail.com'),
('01221011','Daniel','Itaquaquecetuba','daniel169@gmail.com');

select * from tb_aluno;

select nome_aluno, RA from tb_aluno;

-- EXEMPLO WHARE 

select nome_aluno, RA from tb_aluno where email_aluno = 'dener169@gmail.com';
select email_aluno from tb_aluno where RA = "01221011"; 

-- EXEMPLO OR

select bairro_aluno from tb_aluno
  where bairro_aluno = 'Itaquera' or bairro_aluno = 'Itaquaquecetuba';
  
-- EXEMPLO LIKE %

-- o que começa começa com Ita
select bairro_aluno from tb_aluno
		where bairro_aluno like 'Ita%';
        
-- o que termina com A     
select bairro_aluno from tb_aluno
		where bairro_aluno like '%a';
        
-- o que tem a segunda letra E        
select nome_aluno from tb_aluno
		where nome_aluno like '_e%';
        
-- o que tem letra no meio        
select nome_aluno from tb_aluno
		where nome_aluno like '__e%;' ;
        
 -- penultima letra       
select nome_aluno from tb_aluno
		where nome_aluno like '___g%';
        
-- RA menor que 01221200
select nome_aluno, RA from tb_aluno
		where RA < '01221200';
        
--------------------------------------------

update tb_aluno set nome_aluno = 'Dener Cardozo' where RA = '01211028';