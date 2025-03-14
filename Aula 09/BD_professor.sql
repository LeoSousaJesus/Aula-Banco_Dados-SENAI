create database prof_curso110;

use prof_curso110;

create table professor (
	idProfessor int primary key auto_increment,
    nome varchar(50) not null,
    sobrenome varchar(50) not null,
    especialidade varchar(50) not null
);

desc professor;

create table curso (
	idCurso int primary key auto_increment,
    curso varchar(50) not null,
    cargaHoraria varchar(10) not null,
    turno char(1) not null,
    fk_idProfessor int, foreign key (fk_idProfessor) references professor (idProfessor)
);

desc curso;