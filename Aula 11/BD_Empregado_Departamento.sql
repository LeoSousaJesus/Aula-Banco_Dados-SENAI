create database empregado_departamento;
use empregado_departamento;


create table departamento (
    idDepartamento int primary key auto_increment,
    nomeDepartamento varchar(50),
    endereco varchar(50)
);

create table empregado (
    idEmpregado int primary key auto_increment,
    nomeEmpregado varchar(50),
    salario float(7,2),
    sexo char(1),
    fk_funcionario int,
    foreign key (fk_funcionario) references departamento(idDepartamento)
);