/* Criar Banco Livros */
CREATE DATABASE BD_Livros;

/* Ativar o BD_Livros */
USE BD_Livros;

/* Tabela Autor */
CREATE TABLE autor (
    idAutor INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    sexo CHAR(1) NOT NULL
);

/* Tabela Editora */
CREATE TABLE editora (
    idEditora INT PRIMARY KEY,
    nomeeditora VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) NOT NULL
);

/* Tabela Telefone*/
CREATE TABLE telefone (
	idTelefone INT PRIMARY KEY,
    DDD CHAR(2) NOT NULL,
    numero VARCHAR (15) NOT NULL,
    fk_idCategoria INT,
    FOREIGN KEY (fk_idCategoria) REFERENCES editora(idEditora)
);

/* Tabela Categoria */
CREATE TABLE categoria (
    idCategoria INT PRIMARY KEY,
    tipoCategoria VARCHAR(50) NOT NULL
);

/* Tabela Livro */
CREATE TABLE livro (
    idLivro INT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    isbn VARCHAR(18) NOT NULL,
    datalancamento DATE,
    numeropagina INT NOT NULL,
    valor FLOAT(7,2) NOT NULL,
    fk_idAutor INT,
    fk_idEditora INT,
    fk_idCategoria INT,
    FOREIGN KEY (fk_idAutor) REFERENCES autor(idAutor),
    FOREIGN KEY (fk_idEditora) REFERENCES editora(idEditora),
    FOREIGN KEY (fk_idCategoria) REFERENCES categoria(idCategoria)
);