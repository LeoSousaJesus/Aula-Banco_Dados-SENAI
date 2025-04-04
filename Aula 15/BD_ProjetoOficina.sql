CREATE DATABASE ProjetoOficina;

USE ProjetoOficina;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo CHAR(1) NOT NULL
);

CREATE TABLE TipoTelefone (
    id_TipoTelefone INT PRIMARY KEY,
    TipoTelefone VARCHAR(20) NOT NULL
);

CREATE TABLE Telefone (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(20),
    DDD CHAR(2),
    fk_id_cliente INT,
    fk_id_TipoTelefone INT,
    FOREIGN KEY (fk_id_cliente) REFERENCES Cliente(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_TipoTelefone) REFERENCES TipoTelefone(id_TipoTelefone) ON DELETE CASCADE
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
    id_TipoCor INT PRIMARY KEY,
    TipoCor VARCHAR(20)
);

CREATE TABLE Cor (
    id_cor INT AUTO_INCREMENT PRIMARY KEY,
    cor VARCHAR(20) NOT NULL,
    fk_id_TipoCor INT NOT NULL,
    FOREIGN KEY (fk_id_TipoCor) REFERENCES TipoCor(id_TipoCor)
);

CREATE TABLE Carro (
    id_carro INT PRIMARY KEY,
    placa VARCHAR(10),
    fk_id_cliente INT,
    fk_id_modelo INT,
    FOREIGN KEY (fk_id_cliente) REFERENCES Cliente(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_modelo) REFERENCES Modelo(id_modelo) ON DELETE CASCADE
);

CREATE TABLE Carro_Cor (
    fk_id_carro INT,
    fk_id_cor INT,
    PRIMARY KEY (fk_id_carro, fk_id_cor),
    FOREIGN KEY (fk_id_carro) REFERENCES Carro(id_carro) ON DELETE CASCADE,
    FOREIGN KEY (fk_id_cor) REFERENCES Cor(id_cor) ON DELETE CASCADE
);