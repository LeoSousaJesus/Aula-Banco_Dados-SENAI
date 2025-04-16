-- Criar o banco testeproduto_110
CREATE DATABASE testeproduto_110;

-- Comando para rodar o banco
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
CREATE PROCEDURE inserir_produtos()
BEGIN
    INSERT INTO produto_110 (produto, quantidade, valor) 
    VALUES ('Notebook', 10, 3599.99);
    
    INSERT INTO produto_110 (produto, quantidade, valor) 
    VALUES ('Mouse', 50, 89.90);
    
    -- Inserindo o Teclado Mecânico
    INSERT INTO produto_110 (produto, quantidade, valor) 
    VALUES ('Teclado', 25, 249.50);
END $$
DELIMITER ;


CALL inserir_produtos();

SELECT * FROM produto_110;

DELIMITER $$
CREATE TRIGGER inserirBKP_produto
AFTER INSERT ON produto_110
FOR EACH ROW
BEGIN
    INSERT INTO BKP_produto_110 (IDproduto, produto, quantidade, valor)
    VALUES (NEW.Idproduto, NEW.produto, NEW.quantidade, NEW.valor);
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER deletarBKP_produto
AFTER DELETE ON produto_110
FOR EACH ROW
BEGIN
    INSERT INTO BKP_produto_110 (IDproduto, produto, quantidade, valor)
    VALUES (OLD.Idproduto, OLD.produto, OLD.quantidade, OLD.valor);
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER updateBKP_valor
AFTER UPDATE ON produto_110
FOR EACH ROW
BEGIN
    IF OLD.valor <> NEW.valor THEN
        INSERT INTO BKP_produto_110 (IDproduto, produto, quantidade, valor)
        VALUES (NEW.Idproduto, NEW.produto, NEW.quantidade, NEW.valor);
    END IF;
END $$
DELIMITER ;

-- Deletar um produto
DELETE FROM produto_110
WHERE Idproduto = 1;

-- Verificando produtos
SELECT * FROM produto_110;


