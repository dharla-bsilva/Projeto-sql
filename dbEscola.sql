-- criar bando de dados
create database dbEscola;
-- acessar banco de dados
use dbEscola;
-- criar tabelas
create table tbcursoAluno(
curso_idCurso int,
aluno_idAluno int
);
create table tbCurso(
idCurso int,
nome varchar(45),
professor_idProfessor int
);
create table tbAluno(
idAluno int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);
create table tbProfessor(
idProfessor int,
nome varchar(45),
email varchar(45),
cpf int,
endereco varchar(45),
numero int,
complemento varchar(45),
cidade varchar(45),
estado varchar(45)
);

-- Visualizar a ESTRUTURA da tabela
desc dbEscola;
