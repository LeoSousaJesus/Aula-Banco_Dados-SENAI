-- 1. Procedure para cadastrar novo cliente com telefone
DELIMITER $$
CREATE PROCEDURE sp_cadastrar_cliente(
    IN p_nome VARCHAR(50),
    IN p_cpf VARCHAR(14),
    IN p_email VARCHAR(100),
    IN p_ddd INT,
    IN p_telefone VARCHAR(15)
)
BEGIN
    DECLARE cliente_id INT;
    
    INSERT INTO Cliente (nome, cpf, email) VALUES (p_nome, p_cpf, p_email);
    SET cliente_id = LAST_INSERT_ID();
    
    INSERT INTO Telefone (numero_telefone, DDD, fk_id_cliente) 
    VALUES (p_telefone, p_ddd, cliente_id);
    
    SELECT 'Cliente cadastrado com sucesso!' AS mensagem;
END $$
DELIMITER ;

-- 2. Procedure para registrar nova encomenda com produtos
DELIMITER $$
CREATE PROCEDURE sp_registrar_encomenda(
    IN p_id_cliente INT,
    IN p_id_local INT,
    IN p_data_pedido DATE,
    IN p_codigo_rastreio VARCHAR(50),
    IN p_produtos JSON -- Formato: [{"id":1,"qtd":2},{"id":3,"qtd":1}]
)
BEGIN
    DECLARE encomenda_id INT;
    DECLARE i INT DEFAULT 0;
    DECLARE produto_id INT;
    DECLARE quantidade INT;
    DECLARE total_itens INT;
    
    -- Cria a encomenda
    INSERT INTO Encomenda (data_pedido, codigo_rastreio, fk_id_cliente, fk_id_local)
    VALUES (p_data_pedido, p_codigo_rastreio, p_id_cliente, p_id_local);
    
    SET encomenda_id = LAST_INSERT_ID();
    
    -- Processa cada produto
    SET total_itens = JSON_LENGTH(p_produtos);
    
    WHILE i < total_itens DO
        SET produto_id = JSON_EXTRACT(p_produtos, CONCAT('$[', i, '].id'));
        SET quantidade = JSON_EXTRACT(p_produtos, CONCAT('$[', i, '].qtd'));
        
        -- Adiciona o produto à encomenda (simplificado)
        INSERT INTO Produto (fk_id_encomenda, fk_id_tipo, produto, preco)
        SELECT encomenda_id, fk_id_tipo, produto, preco
        FROM Produto
        WHERE id_produto = produto_id
        LIMIT 1;
        
        SET i = i + 1;
    END WHILE;
    
    SELECT CONCAT('Encomenda ', encomenda_id, ' registrada com sucesso!') AS mensagem;
END $$
DELIMITER ;

-- 3. Procedure para relatório de vendas por período
DELIMITER $$
CREATE PROCEDURE sp_relatorio_vendas_periodo(
    IN p_data_inicio DATE,
    IN p_data_fim DATE
)
BEGIN
    SELECT 
        e.id_encomenda,
        e.data_pedido,
        c.nome AS cliente,
        COUNT(p.id_produto) AS total_produtos,
        SUM(p.preco) AS valor_total
    FROM Encomenda e
    JOIN Cliente c ON e.fk_id_cliente = c.id_cliente
    JOIN Produto p ON e.id_encomenda = p.fk_id_encomenda
    WHERE e.data_pedido BETWEEN p_data_inicio AND p_data_fim
    GROUP BY e.id_encomenda, e.data_pedido, c.nome
    ORDER BY e.data_pedido;
END //
DELIMITER ;

-- 4. Procedure para atualizar estoque (simulada)
DELIMITER //
CREATE PROCEDURE sp_atualizar_estoque(
    IN p_id_produto INT,
    IN p_quantidade INT
)
BEGIN
    -- Em um modelo real, teríamos uma tabela de estoque
    -- Esta é uma versão simplificada
    UPDATE Produto 
    SET estoque = estoque + p_quantidade
    WHERE id_produto = p_id_produto;
    
    SELECT CONCAT('Estoque do produto ', p_id_produto, ' atualizado.') AS mensagem;
END $$
DELIMITER ;