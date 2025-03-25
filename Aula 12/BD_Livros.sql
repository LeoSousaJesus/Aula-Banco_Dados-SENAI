CREATE DATABASE BD_Livros;
USE BD_Livros;

CREATE TABLE autor (
    id_autor INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    sexo CHAR(1)
);

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY,
    tipocategoria VARCHAR(50) NOT NULL
);

CREATE TABLE editora (
    id_editora INT PRIMARY KEY,
    nomeeditora VARCHAR(50) NOT NULL,
    telefone VARCHAR(12) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18)
);

CREATE TABLE livro (
    id_livro INT PRIMARY KEY,
    isbn VARCHAR(17) NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    datalancamento DATE,
    numeropagina INT NOT NULL,
    valor FLOAT(7,2) NOT NULL,
    fk_id_autor INT,
    fk_id_editora INT,
    fk_id_categoria INT,
    FOREIGN KEY (fk_id_autor) REFERENCES autor(id_autor),
    FOREIGN KEY (fk_id_editora) REFERENCES editora(id_editora),
    FOREIGN KEY (fk_id_categoria) REFERENCES categoria(id_categoria)
);