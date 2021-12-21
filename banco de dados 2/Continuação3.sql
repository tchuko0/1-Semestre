create database continuada3;

use continuada3;

create table cliente(
idCliente int primary key auto_increment,
nomeCliente varchar(45),
email varchar(45),
rua varchar(45),
numeroRua int,
cep varchar(45),
fkIndicado int,
foreign key(fkIndicado) references cliente(idCliente)
);

-- alter table cliente add fkIndicado int;

-- alter table cliente 
-- add constraint foreign key (fkIndicado) 
-- references cliente(idCliente);

create table venda(
idVenda int primary key auto_increment,
totalVenda decimal(8,2),
dtVenda date,
fkCliente int,
foreign key(fkCliente) references cliente(idCliente)
) auto_increment 50;

create table produto(
idProduto int primary key auto_increment,
nomeProduto varchar(40),
descricaoProduto varchar(100),
precoProduto decimal(8,2)
) auto_increment 100;

create table produtoVenda(
idProdutoVenda int primary key auto_increment,
qtdProdutos int,
valorDesconto decimal(8,2),
fkProduto int,
foreign key (fkProduto) references produto(idProduto),
fkVenda int,
foreign key(fkVenda) references venda(idVenda)
) auto_increment 150;

-- alter table produtoVenda add fkProduto int;

-- alter table produto  add constraint foreign key (fkProduto) references produto(idProduto);

-- alter table produtoVenda add fkVenda int;

-- alter table produto  add constraint foreign key (fkVenda) references venda(idVenda);

insert into cliente(nomeCliente,email,rua,numeroRua,cep,fkIndicado) values
('Dener','dener123@email.com','Rua Antonio Lucas',169,08470710,null),
('Diego','diego246@email.com','Rua Antonio Thadeo',373,08460500,1),
('Danilo','danilo137@email.com','Rua dos texteis',781,08470300,null),
('Douglas','douglas174@email.com','Rua Santo Rizzo',256,08470100,3);

insert into venda(totalVenda,dtVenda,fkCliente) values 
(100, '2021-10-11',1),
(150, '2021-09-01',2),
(200, '2021-05-09',3),
(90, '2021-11-04',4);

insert into produto(nomeProduto,descricaoProduto,precoProduto)values
('Televisão','50 Polegadas', 4000),
('Celular','Samsung', 2500),
('Video Game','PlayStation', 3000),
('Notebook','dell', 3500);

insert into  produtoVenda(qtdProdutos,valorDesconto,fkProduto,fkVenda)values
(10,50,100,50),
(15,30,101,51),
(17,20,102,52),
(9,10,103,53);


-- Exibir todos os dados de cada tabela criada, separadamente.
select * from cliente;
select * from venda;
select * from produto;
select * from produtoVenda;

-- Exibir os dados dos clientes e os dados de suas respectivas vendas.
select * 
from cliente 
left join venda 
on fkCliente=(idCliente);

-- Exibir os dados de um determinado cliente (informar o nome do cliente na consulta) e os dados de suas respectivas vendas.
select * 
from cliente 
left join venda 
on fkCliente=(idCliente)
where nomeCliente = 'Dener';

-- Exibir os dados dos clientes e de suas respectivas indicações de clientes.
select * 
from cliente as c 
left join cliente as i 
on c.fkIndicado=(i.idCliente);

--  Exibir os dados dos clientes indicados e os dados dos respectivos clientes indicadores, porém somente de um determinado cliente indicador (informar o nome do cliente que indicou na consulta)
select * 
from cliente as c 
right join cliente as i 
on c.fkIndicado=(i.idCliente)
where c.nomeCliente = 'Diego';

-- Exibir os dados dos clientes, os dados dos respectivos clientes que indicaram, os dados das respectivas vendas e dos produtos.
select c.nomeCliente,i.nomeCliente, produtoVenda.*
from cliente as c 
left join cliente as i 
on c.fkIndicado=(i.idCliente)
join produtoVenda
on idProdutoVenda;

-- Exibir apenas a data da venda, o nome do produto e a quantidade do produto numa determinada venda.

select nomeProduto,qtdProdutos,dtVenda
from  produtoVenda
join produto
on fkProduto=(idProduto)
join venda
on fkVenda=(idVenda);

  -- Exibir apenas o nome do produto, o valor do produto e a soma da quantidade de produtos vendidos agrupados pelo nome do produto.
select nomeProduto,precoProduto, sum(qtdProdutos) as 'Soma dos produtos'
from produtoVenda
join produto
on fkProduto=(idProduto);








