drop database dbPortaria;
 
create database dbPortaria;
 
use dbPortaria;
 
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key(codFunc));

create table tbClientes(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telCel char(10),
primary key(codCli));


create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(10),
cnpj char(18) not null unique,
primary key(codForn));


create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc));

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100) not null,
lote char(12),
validade date,
dataEntr date,
horaEntr time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn));

create table tbVendas(
codVend int not null auto_increment,
valor decimal(9,2),
quantidade int,
dataVend date,
horaVend time,
codUsu int not null,
codProd int not null,
codCli int not null,
primary key(codVend),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli));


desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbClientes;
desc tbProdutos;
desc tbVendas;

-- Tabela Funcionarios

insert into tbFuncionarios(nome,rg,cpf,sexo,salario) values('Dharla Silva','52.741.528-7','425.785.985-77','F',2500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario) values('Miguel Barros','42.147.825-9','427.987.888-71','M',2500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario) values('Gabryell Zillig','62.554.897-1','435.885.985-62','M',3100.45);

-- Tabela Clientes

insert into tbClientes(codCli,nome,email,telCel) values(1,'Joana Antunes','joana.antunes@hotmail.com','95248-7597');
insert into tbClientes(codCli,nome,email,telCel) values(2,'Katia Assad','katia.assad@hotmail.com','98572-8625');
insert into tbClientes(codCli,nome,email,telCel) values(3,'Mauricio de Souza','mauricio.souza@hotmail.com','98574-9852');

-- Tabela Fornecedores

insert into tbFornecedores(nome,email,telefone,cnpj) values('Armarinho Fernandez','sac@afernandez.com.br','98523-8745','48.076.228/0001-91');
insert into tbFornecedores(nome,email,telefone,cnpj) values('Casas Bahias','sac@casasbahias.com.br','97825-1100','78.021.889/0001-80');
insert into tbFornecedores(nome,email,telefone,cnpj) values('Magazine Luiza','sac@magalu.com.br','98867-2372','58.991.231/0001-71');
insert into tbFornecedores(nome,email,telefone,cnpj) values('Ponto Frio','sac@pontofrio.com.br','98877-2399','45.220.871/0001-95');

-- Tabela Usuarios

insert into tbUsuarios(nome,senha,codFunc) values('gabryell.zillig','123456',3);
insert into tbUsuarios(nome,senha,codFunc) values('miguel.barros','654321',2);
insert into tbUsuarios(nome,senha,codFunc) values('dharla.silva','123457',1);

-- Tabela Produtos

insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn) values('papel sulfite','524515','2030-11-19','2025-12-10','11:46:00',10,25.35,1);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn) values('banana','748796','2035-10-20','2036-11-06','09:20:20',15,30.25,2);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn) values('leite condensado','104596','2036-12-11','2024-21-11','09:50:20',20,100.25,3);
insert into tbProdutos(descricao,lote,validade,dataEntr,horaEntr,quantidade,preco,codForn) values('creme de leite','114578','2025-10-12','2026-01-15','09:10:20',11,85.25,4);


-- Tabela Vendas 

insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli) values(25.35,10,'2025-21-11','15:30:00',3,1,1);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli) values(30.25,5,'2026-01-10','14:30:00',2,2,2);
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli) values(100.25,15,'2030-02-12','13:30:00',1,4,3);


select * from tbFuncionarios;
select * from tbClientes;
select * from tbFornecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;

-- inner join

select func.nome as 'Nome do Funcionario' 
,usu.nome as 'Nome do Usuario'
from tbUsuarios as usu
inner join tbFuncionarios as func
on usu.codFunc = func.codFunc
where  func.nome like '%o%';