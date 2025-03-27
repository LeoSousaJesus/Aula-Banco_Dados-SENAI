/* Criar Banco Estacionamento */
CREATE DATABASE BD_Estacionamento_110;

/* Ativar o BD_Estacionamento */
USE BD_Estacionamento_110;

CREATE TABLE Veiculo (
	IdVeiculo INT PRIMARY KEY,
    Placa VARCHAR(8) NOT NULL,
    Modelo VARCHAR(20) NOT NULL,
    Cor VARCHAR(20) NOT NULL,
    fk_IdCliente INT,
    FOREIGN KEY (fk_idCLiente) REFERENCES cliente(idCliente)
);

CREATE TABLE Cliente (
	IdCliente INT PRIMARY KEY,
	Nome VARCHAR (50) NOT NULL,
    CPF VARCHAR(14) NOT NULL
);

CREATE TABLE Telefone (
	idTelefone INT PRIMARY KEY,
    DDD CHAR(2) NOT NULL,
    numero VARCHAR (15) NOT NULL,
    fk_IdCliente INT,
    FOREIGN KEY (fk_idCLiente) REFERENCES cliente(idCliente)
);

CREATE TABLE Ticket (
	IdTicket INT PRIMARY KEY,
    Hora_entrada TIME,
    Hora_saida TIME,
    fk_IdCliente INT,
    FOREIGN KEY (fk_idCLiente) REFERENCES cliente(idCliente),
    fk_IdVaga INT,
    FOREIGN KEY (fk_idVaga) REFERENCES Vaga(idVaga)
);

CREATE TABLE Vaga (
	IdVaga INT PRIMARY KEY,
    StatusVaga BOOLEAN NOT NULL DEFAULT 0,
    fk_IdTipoVaga INT,
    FOREIGN KEY (fk_IdTipoVaga) REFERENCES TipoVaga(idTipoVaga)
);

CREATE TABLE TipoVaga (
	IdTipoVaga INT PRIMARY KEY,
    TipoVaga VARCHAR(10)
);