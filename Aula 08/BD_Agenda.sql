/* Atividade Banco de Dados
Criar um banco de dados com nome ‘Agenda’;
criar tabela contato: idcontato, nome, email, ddd, telefone, UF;
email não é obrigatorio, então alguns contatos sem email.
*/

CREATE DATABASE Agenda;

USE Agenda;

CREATE TABLE contato (
    idcontato INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    ddd CHAR(2) NOT NULL,
    telefone VARCHAR(10) NOT NULL,
    UF CHAR(2) NOT NULL
);





















