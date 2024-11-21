-- apagar banco de dados
drop database dbloterica;
-- Criar banco de dados
create database dbLoterica;
-- acessar o banco de dados
use dbLoterica;
-- criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar (100),
telefone char (9),
cpf char(14),
idade int,
salario decimal(9,2) 
);
 
-- inserindo registros nas tabelas
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(1,'Paulo Antunes da Silva','paulo.asilva@hotmail.com','987120567','174.255.958-64',32,3800);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(2,'Regina Miranda','regina.miranda@gmail.com','965874234','335.547.568-25',28,1800);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(3,'Mario de Andrade','mario.andrade@yahoo.com','965429854','157.137.514-65',54, 545,00);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(4,'Ronaldo Rodrigues','ronaldo.rodrigues@gmail.com','965456464','125.187.714-25',45, 1300);
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario) values(5,'Fernando Cunha','fernando.ccunha@gmail.com','963643154','747.637.544-35',51, 3216);
--visualizando as estruturas das tabelas
desc tbFuncionarios;
--visualizando os registros da tabelas
select * from tbFuncionarios;


--alterando registros das tabelas

--update

--excluindo registros das tabelas