drop database dbPadaria;
create database dbPadaria;

use dbPadaria;

create table tbCartao(
codNu int not null auto_increment,
VaTotal decimal(9,2),
primary key(codNu)
);


create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
cargo varchar(100),
primary key(codFunc));


create table tbClientes(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telCel char(10),
codNu int not null,
primary key(codCli),
foreign key(codNu)references tbCartao(codNu)
);

create table tbVendas(
codVend int not null auto_increment,
produto varchar(100) not null,
lote char(12),
validade date,
quantidade int,
preco decimal(9,2)
primary key(codVend)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100) not null,
lote char(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
primary key(codProd)
);



create table tbEstoque(
codEst int not null auto_increment,
descricao varchar(100) not null,
Lote char(12),
Validade date,
quantidade int,
primary key(codEst)
);


desc tbFuncionarios;
desc tbClientes;
desc tbProdutos;
desc tbEstoque;
desc tbCartao;
desc tbVendas;

insert into tbCartao(vatotal) values(105.65);
insert into tbCartao(vatotal) values(95.98);
insert into tbCartao(vatotal) values(80.90);
insert into tbCartao(vatotal) values(10.98);
insert into tbCartao(vatotal) values(15.60);

insert into tbFuncionarios(nome,cargo) values('Joao Gomes','Auxiliar Limpeza');
insert into tbFuncionarios(nome,cargo) values('Clara Maria','Caixa');
insert into tbFuncionarios(nome,cargo) values('Jose Luiz','Padeiro');
insert into tbFuncionarios(nome,cargo) values('Maria Jose','Atendente');


insert into tbClientes(codNu,nome,email,telCel) values(1,'Simone Silva','simone.silva@hotmail.com','95478-7129');
insert into tbClientes(codNu,nome,email,telCel) values(2,'Karina Sato','karina.sato@hotmail.com','95542-7401');
insert into tbClientes(codNu,nome,email,telCel) values(3,'Gabriel Antonio','gabriel.antonio@hotmail.com','95521-9104');
insert into tbClientes(codNu,nome,email,telCel) values(4,'Jose Antonio','jose.antonio@hotmail.com','97892-9873');
insert into tbClientes(codNu,nome,email,telCel) values(5,'Victor Gael','victor.gael@gmail.com','95526-7898');

insert into tbVendas(produto,lote,validade,preco) values('Paes','874569','2030-11-19',100,25.35);
insert into tbVendas(produto,lote,validade,preco) values('Frios','789412','2035-10-27',20,30.25);
insert into tbVendas(produto,lote,validade,preco) values('Lanches','780123','2036-12-20',20,50.25);
insert into tbVendas(produto,lote,validade,preco) values('Refrigerantes','114578','2029-10-12',50,85.25);
insert into tbVendas(produto,lote,validade,preco) values('Sorvetes','852106','2026-01-08',30,35.30);


insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco) values('Paes','874569','2030-11-19','2025-12-10','11:45:00',100,25.35);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco) values('Frios','789412','2035-10-27','2036-11-08','09:20:15',20,30.25);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco) values('Lanches','780123','2036-12-20','2028-21-10','09:10:20',20,50.25);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco) values('Refrigerantes','114578','2029-10-12','2026-010-15','09:35:20',50,85.25);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco) values('Sorvetes','852106','2026-01-08','2027-10-01','15:10:25',30,35.30);


insert into tbEstoque(descricao,lote,validade,quantidade) values('Farinha de trigo','874569','2031-10-10',100);
insert into tbEstoque(descricao,lote,validade,quantidade) values('Queijo','874213','2026-12-10',50);
insert into tbEstoque(descricao,lote,validade,quantidade) values('Presunto','975632','2027-05-15',25);
insert into tbEstoque(descricao,lote,validade,quantidade) values('Coca-cola','114578','2029-10-12',50);
insert into tbEstoque(descricao,lote,validade,quantidade) values('Sorvete chocolate','852106','2026-01-08',30);

select * from tbFuncionarios;
select * from tbClientes;
select * from tbProdutos;
select * from tbCartao;
select * from tbVendas;