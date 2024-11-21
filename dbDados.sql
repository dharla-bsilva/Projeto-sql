-- criar banco de dados
create database dbDados;
-- acessar banco de dados
use dbDados;
-- criar tabelas
create table tbbairro(
CodDad int,
nome varchar(100),
cidade int
);
create table tbcidade(
id int(11),
nome varchar(38),
estado int
);
create table tbestado(
id int(11),
sigla char(2)
);
create table tbenderecos(
id bigint(20),
bairro_id int(11),
tipo_local varchar(15),
logadouro varchar(128),
numero int(11),
complemento varchar(255)
);
create table tbservico(
id bigint(20),
endereco_id bigint(20),
solicitante_id bigint(20)
);
create table tbponto(
id bigint(20),
endereco_id bigint(20)
);
create table tbsolicitante(
id bigint(20),
endereco_id bigint(20)
);




