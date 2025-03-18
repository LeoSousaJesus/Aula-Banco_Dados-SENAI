/*
1. Projetar Nome, Sobrenome, Logradouro, UF;
2. Projetar Idcliente, Nome, ddd, Numero;
3. Projetar Nome, Sobrenome, Logradouro, UF Em Ordem Alfabetica Por UF;
4. Projetar Idcliente, Nome, Sobrenome, Logradouro, UF, Em Ordem Alfabetica Por Idcliente;
5. Projetar quantidade de UF cadastrada;
6. projetar as cidades cadastradas e suas quantidades;
7. projetar as cidades cadastradas, suas quantidades em ordem alfabetica;
8. Projetar a quantidade de UFS cadastradas sem repetiçao;
9. projetar idcliente, nome, sobrenome, UFs, ddds;
10. projetar idcliente, nome, sobrenome, UFs, ddds, em ordem crescente por ddd.
11. Projetar nome, sobrenome, logradouro, ddd, numero de telefone do cliente X, NÃO
ESQUECER DE MOSTRAR QUE REALMENTE É O IDCLIENTE PROCURADO.
12. Projetar todos os clientes das UF x e da UF y
13. Projetar todos enderecos de 3 ufs
14. projetar nome, sobrenome, tipotelefone, ddd, numero por ordem de nome;
15. projetar nome, sobrenome, logradouro, cidade, uf, tipotelefone, ddd, numero, por ordem de
uf;
*/

/* Modelo Físico BD_cliente: */

create database cliente_endereco110;
use cliente_endereco110;

create table cliente(
idcliente int primary key auto_increment,
nome varchar(50) not null,
sobrenome varchar(50) not null
);

Create table tipotelefone(
idtipotelefone int primary key auto_increment,
tipotelefone varchar(20) not null
);

create table endereco(
idendereco int primary key auto_increment,
logradouro varchar(50) not null,
cidade varchar(50) not null,
uf char(2) not null,
id_cliente int,
foreign key (id_cliente) references cliente(idcliente)
);

create table telefone(
idtelefone int primary key auto_increment,
ddd varchar(5) not null,
numero varchar(20) not null,
id_cliente int,
id_tipotelefone int,
foreign key (id_cliente) references cliente(idcliente),
foreign key (id_tipotelefone) references tipotelefone(idtipotelefone)
);