CREATE DATABASE REVIEWTRIGGER_110;
USE REVIEWTRIGGER_110;

CREATE TABLE ALUNO(
	IDaluno INT primary key auto_increment,
    nome_aluno varchar(20) NOT NULL,
    sobrenome varchar(20) NOT NULL,
    CPF varchar(14) NOT NULL unique,
    email varchar(30) NOT NULL UNIQUE
);

CREATE TABLE BKP_ALUNO(
	IDBKP_ALUNO INT primary key auto_increment,
    IDaluno INT,
    nome_aluno varchar(20) NOT NULL,
    sobrenome varchar(20) NOT NULL,
    email varchar(30) NOT NULL UNIQUE
);


DELIMITER $$
CREATE TRIGGER INSERIR_BKP_ALUNO
AFTER INSERT ON ALUNO
FOR EACH ROW
BEGIN
	INSERT INTO BKP_ALUNO VALUES(NULL, NEW.IDaluno,  NEW.nome_aluno, NEW.sobrenome, NEW.email);
END $$

DELIMITER ;

INSERT INTO ALUNO (nome_aluno, sobrenome, CPF, email) 
VALUES ('Thiago', 'Cachorrão', '987.654.321-01', 'thiaguinhodelas.@email.com');

CREATE TABLE ALUNO_DELETADO (
IDaluno_deletado INT PRIMARY KEY AUTO_INCREMENT,
IDaluno INT,
nome_aluno VARCHAR (30),
sobrenome VARCHAR(30),
CPF VARCHAR(15),
email VARCHAR(30),
usuario VARCHAR(30),
horario TIME
);

DESC ALUNO;

DELIMITER $$
CREATE TRIGGER T_DELETAR_ALUNO
BEFORE DELETE ON ALUNO
FOR EACH ROW
BEGIN
INSERT INTO ALUNO_DELETADO VALUES(NULL, OLD.IDaluno, OLD.nome_aluno, OLD.sobrenome, OLD.CPF, OLD.email, USER(), NOW());
END $$
DELIMITER ;

CREATE TABLE BKP_ALUNO_ATT(
IDBKP_alunoAtt  INT,
IDaluno INT,
nome_aluno VARCHAR(30),
sobrenome VARCHAR(30),
CPF VARCHAR(15),
email_antigo VARCHAR(30),
email_novo VARCHAR(30),
usuario VARCHAR(30),
horario TIME,
DATA DATE
);

SELECT NOW();
SELECT CURRENT_DATE();

DELIMITER $$
CREATE TRIGGER TG_Alunoupdate
BEFORE UPDATE ON ALUNO
FOR EACH ROW
BEGIN
INSERT INTO BKP_ALUNO_ATT VALUES(NULL, OLD.IDaluno, OLD.nome_aluno, OLD.sobrenome, OLD.CPF, OLD.email, NEW.email, USER(), NOW(), CURRENT_DATE());
END $$
DELIMITER ;

UPDATE ALUNO
SET email = "aluno@gmail.com"
WHERE IDaluno = 1;

SELECT * FROM ALUNO;
SELECT * FROM BKP_ALUNO;
SELECT * FROM ALUNO_DELETADO;
SELECT * FROM BKP_ALUNO_ATT;


