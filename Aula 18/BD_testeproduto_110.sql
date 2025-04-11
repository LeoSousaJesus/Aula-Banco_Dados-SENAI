CREATE DATABASE  testeproduto_110;
USE testeproduto_110;

CREATE TABLE produto_110 (
	Idproduto INT PRIMARY KEY AUTO_INCREMENT,
	produto VARCHAR(30) NOT NULL,
	quantidade INT NOT NULL,
	valor FLOAT(5,2) NOT NULL
);

CREATE TABLE BKP_produto_110(
	IDBKP_produto INT PRIMARY KEY AUTO_INCREMENT,
    IDproduto INT,
    produto varchar(20),
    quantidade INT,
    valor FLOAT(5,2)
);

DELIMITER $$
CREATE PROCEDURE sp_inserir_produtos()
BEGIN
    -- Inserindo o Notebook Dell
    INSERT INTO produto_110 (produto, quantidade, valor) 
    VALUES ('Notebook Dell', 10, 3599.99);
    
    -- Inserindo o Mouse Sem Fio
    INSERT INTO produto_110 (produto, quantidade, valor) 
    VALUES ('Mouse Sem Fio', 50, 89.90);
    
    -- Inserindo o Teclado Mecânico
    INSERT INTO produto_110 (produto, quantidade, valor) 
    VALUES ('Teclado Mecânico', 25, 249.50);
END $$
DELIMITER ;