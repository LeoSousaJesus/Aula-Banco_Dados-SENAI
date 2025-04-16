-- Criando o banco 
CREATE DATABASE Funcionario_departamento_110;

-- Rodando o banco
USE Funcionario_departamento_110;

-- Tabela de Departamentos
create table Departamento (
Id_departamento int primary key auto_increment,
Departamento varchar(30) not null,
Admissao date not null,
Salario float(8,2) not null,
Cargo varchar(30) not null
);

-- Tabela de Funcionário
create table Funcionario (
Id_funcionario int primary key auto_increment,
Nome varchar(30) not null,
Sexo char(2) not null,
Email varchar(30) not null, 
fk_Departamento_Id_departamento int,
foreign key (fk_Departamento_Id_departamento) references Departamento (Id_departamento) on delete cascade );


