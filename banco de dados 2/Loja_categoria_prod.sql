create database Produto_preco;

use produto_preco;

create table Categoria (
idCategoria int primary key auto_increment,
nomeCategoria varchar(45)
) auto_increment = 10;

create table Produto (
idProduto int primary key auto_increment,
descricao varchar(45),
fkCategoria int,
foreign key (fkCategoria) references Categoria(idCategoria)
) auto_increment = 100;

create table Loja (
idLoja int primary key auto_increment,
nomeLoja varchar(45),
dtFund date
) auto_increment = 1000;

create table Preco_loja (
fkProduto int,
foreign key (fkProduto) references Produto(idProduto),
fkLoja int,
foreign key (fkLoja) references Loja(idLoja),
preco decimal (10,2)
);


insert into Categoria(nomeCategoria) values
('eletrônico'),
('alimento'),
('perfumaria'),
('alimento');

insert into Produto(descricao,fkCategoria) values
('celular samsung', 10),
('Banana maça', 11),
('Malbec', 12),
('PasseTempo', 13);

insert into Loja (nomeLoja,dtFund) values
('Loja do Zé', '2000-11-10'),
('Da esquina', '1973-05-01'),
('Brother65', '1998-02-08'),
('Mercadinho', '1997-02-03');

insert into Preco_loja(fkProduto,fkLoja,preco) values
(100, 1000, 2500),
(101, 1001, 1.50),
(102, 1002, 200),
(103, 1003, 2.00);

-- exibindo os dados das tabelas

select * from Categoria;
select * from Produto;
select * from Loja;
select * from Preco_loja;

-- Exibir categorias e seus produtos

select * from Categoria join Produto on fkCategoria = idCategoria;

-- Exibir os dados de uma determinada categoria e os dados do seu produto
select * from Categoria 
join Produto 
on fkCategoria = idCategoria 
where nomeCategoria = 'eletronico';
    
-- Exbir a média e a soma dos produtos
select truncate(avg(preco),2), sum(preco) from Preco_loja;

-- Exibir o menor valor e o maior preço dos produtos, no geral
select max(preco), min(preco) from Preco_loja;

-- Exibir os dados dos produtos, os dados da loja correspondentes e os preços dos produtos em cada loja
select * from Produto 
join Preco_loja 
on fkProduto = idProduto
join Loja 
on fkLoja = idLoja;
    
-- Exibir os dados dos produtos, os dados da loja correspondentes e os preços dos produtos em cada loja
-- de um determinado produto
select * from Produto 
join Preco_loja
on fkProduto = idProduto
join Loja 
on fkLoja = idLoja 
where descricao = 'Malbec';
    

select * from Produto 
join Preco_loja 
on fkProduto = idProduto
join Loja 
on fkLoja = idLoja;
    
-- Exibir produto, soma e a média, agrupados por produto
select descricao, sum(preco) as 'Soma dos Preços', truncate(avg(preco),2) as 'Média dos Preços'
from Produto 
join Preco_loja 
on fkProduto = idProduto 
group by descricao;

-- Exibir a identificação do loja, soma e a média, agrupados pela loja
select nomeLoja, sum(preco) as 'Soma dos Preços', truncate(avg(preco),2) as 'Média dos Preços'
from Loja 
join Preco_loja 
on fkLoja = idLoja 
group by nomeLoja;
    
-- Exibir a identificação do produto, menor e maior preço, agrupados por produto
select descricao, min(preco) as 'Preço mínimo', max(preco) as 'Preço máximo'
from Produto 
join Preco_loja 
on fkProduto = idProduto 
group by descricao;

-- Exibir a identificação do loja, menor e maior preço, agrupados pela loja
select nomeLoja, min(preco) as 'Preço mínimo', max(preco) as 'Preço máximo'
from Loja 
join Preco_loja 
on fkLoja = idLoja 
group by nomeLoja;


