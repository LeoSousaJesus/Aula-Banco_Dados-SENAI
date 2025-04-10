CREATE DATABASE BD_Floricultura;

USE BD_Floricultura;

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(14)  NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Telefone (
    id_telefone INT PRIMARY KEY AUTO_INCREMENT,
    numero_telefone VARCHAR(15) NOT NULL,
    DDD INT NOT NULL,
    fk_id_cliente INT NOT NULL,
    FOREIGN KEY (fk_id_cliente) REFERENCES Cliente(id_cliente) ON DELETE CASCADE
);

CREATE TABLE LocalEntrega (
    id_local INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(100) NOT NULL,
    numero INT NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    cep VARCHAR(14) NOT NULL
);


CREATE TABLE Encomenda (
    id_encomenda INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    codigo_rastreio VARCHAR(50),
    fk_id_cliente INT NOT NULL,
    fk_id_local INT NOT NULL,
    FOREIGN KEY (fk_id_cliente) REFERENCES Cliente(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_local) REFERENCES LocalEntrega(id_local) ON DELETE CASCADE
);

CREATE TABLE TipoProduto (
    id_tipo INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(50) NOT NULL,
    preco FLOAT(5,2) NOT NULL,
    fk_id_tipo INT NOT NULL,
    fk_id_encomenda INT NOT NULL,
    FOREIGN KEY (fk_id_tipo) REFERENCES TipoProduto(id_tipo) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_encomenda) REFERENCES Encomenda(id_encomenda) ON DELETE CASCADE
);