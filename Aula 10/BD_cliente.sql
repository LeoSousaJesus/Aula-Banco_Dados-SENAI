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

/* Modelo_Logico_BD_cliente: */

CREATE DATABASE BD_cliente;

Use BD_cliente;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL
);

CREATE TABLE Endereco (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    UF CHAR(2),
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Telefone (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    ddd CHAR(2) NOT NULL,
    numero VARCHAR(15) NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    id_tipoTelefone INT NOT NULL,
    FOREIGN KEY (id_tipoTelefone) REFERENCES TipoTelefone(id_tipotelefone)
);

CREATE TABLE TipoTelefone (
    id_tipoTelefone INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL
);
