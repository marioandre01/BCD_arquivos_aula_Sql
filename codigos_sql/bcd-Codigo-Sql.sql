CREATE DATABASE bcd;

use bcd;

create table aluno ( 
	nome varchar(128) not null, 
	documento char(11) primary key, 
	telefone bigint, 
	email varchar(128) 
);

insert into aluno (nome, documento, telefone, email) values('Ederson Torresini','12345','33813536','boi@ifsc.edu.br');
insert into aluno (nome, documento, telefone, email) values('Eraldo da Silveira e Silva','6789','33813435','eraldo@ifsc.edu.br');

CREATE TABLE matricula (
  aluno char(11) not null,
  curso varchar(128),
  numero char (10) primary key,
  constraint fk_matricula_aluno_documento foreign key (aluno) references aluno(documento),
  constraint fk_matricula_curso_numero foreign key (curso) references curso(numero)
);

CREATE TABLE curso (
  numero varchar(128) primary key,
  chmin int,
  chmax int,
  nome varchar(128) not null,
  campus varchar(128) not null,
  curriculo varchar(128) not null,
  constraint fk_curso_campus_nome foreign key (campus) references campus(nome),
  constraint fk_curso_curriculo_nome foreign key (curriculo) references curriculo(implantacao)
);

CREATE TABLE campus (
  nome varchar(128) primary key   
); 

CREATE TABLE curriculo (
  implantacao varchar(128) primary key,
  disciplina varchar(128) primary key
); 



   

