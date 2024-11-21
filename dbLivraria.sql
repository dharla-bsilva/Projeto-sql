--criar banco de dados
create database dbLivraria;
--acessar banco de dados
use dbLivraria;
-- criar tabelas
create table tbAluno(
raAluno int,
nome varchar(45),
email varchar(45),
telefone varchar(45)
);
create table tbLivro(
isbn int,
nome varchar(45),
autor varchar(45),
paginas varchar(45),
aluno_raAluno int,
colaborador_id colaborador int
);
create table tbColaborador(
id colaborador int,
cpf varchar(45),
nome varchar(45),
email varchar(45),
cargo varchar(45)
);
create table tbemprestimos(
idEmprestimo int,
data emprestimo date,
livro lsbn varchar(45)
colaborador_id colaborador int
);