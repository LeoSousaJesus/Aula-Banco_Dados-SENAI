CREATE DATABASE ProjetoOficina;

USE ProjetoOficina;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo CHAR(1)
);

CREATE TABLE TipoTelefone (
    Id_TipoTelefone INT PRIMARY KEY,
    TipoTelefone VARCHAR(20)
);

CREATE TABLE Telefone (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_cliente INT NOT NULL,
    numero VARCHAR(20),
    DDD CHAR(2),
    FOREIGN KEY (fk_id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (fk_id_TipoTelefone) REFERENCES Cliente(id_cliente) ON DELETE CASCADE
);

CREATE TABLE Marca (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL
);

CREATE TABLE Modelo (
    id_modelo INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    fk_id_marca INT NOT NULL,
    FOREIGN KEY (fk_id_marca) REFERENCES Marca(id_marca) ON DELETE CASCADE
);

CREATE TABLE TipoCor (
    id_TipocCor INT PRIMARY KEY,
    TipoCor VARCHAR(20)
);

CREATE TABLE Cor (
    id_cor INT AUTO_INCREMENT PRIMARY KEY,
    cor VARCHAR(20) NOT NULL,
    fk_id_TipoCor INT NOT NULL
);

CREATE TABLE Carro (
    id_carro INT PRIMARY KEY,
    placa VARCHAR(10),
    fk_id_cliente INT,
    fk_id_modelo INT,
    FOREIGN KEY (fk_id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (fk_id_modelo) REFERENCES Modelo(id_modelo) ON DELETE CASCADE
);