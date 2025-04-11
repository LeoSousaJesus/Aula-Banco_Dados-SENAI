-- Procedures BD_Floricultura

-- 1. Buscar clientes por nome
DELIMITER $$
CREATE PROCEDURE sp_buscar_clientes_por_nome(
    IN p_nome VARCHAR(50)
)
BEGIN
    SELECT id_cliente, nome, cpf, email
    FROM Cliente
    WHERE nome LIKE CONCAT('%', p_nome, '%')
    ORDER BY nome;
END $$
DELIMITER ;

-- 2. Deletar uma encomenda com os produtos
DELIMITER $$
CREATE PROCEDURE sp_deletar_encomenda(
    IN p_id_encomenda INT
)
BEGIN
    DELETE FROM Produto
    WHERE fk_id_encomenda = p_id_encomenda;
    
    DELETE FROM Encomenda
    WHERE id_encomenda = p_id_encomenda;
    
    SELECT CONCAT('Encomenda ', p_id_encomenda, ' e seus produtos foram deletados.') AS mensagem;
END $$
DELIMITER ;

-- 3. Listar produtos com estoque baixo
DELIMITER $$
CREATE PROCEDURE sp_listar_estoque_baixo(
    IN p_limite INT
)
BEGIN
    SELECT id_produto, produto, estoque
    FROM Produto
    WHERE estoque < p_limite
    ORDER BY estoque ASC;
END $$
DELIMITER ;