-- Procedure 1: Listar carros por cliente com detalhes completos
DELIMITER $$
CREATE PROCEDURE ListarCarrosPorCliente(IN C INT)
BEGIN
    SELECT 
        c.placa,
        m.modelo,
        ma.marca,
        GROUP_CONCAT(DISTINCT co.cor SEPARATOR ', ') AS cores,
        GROUP_CONCAT(DISTINCT tc.TipoCor SEPARATOR ', ') AS tipos_tinta
    FROM Carro c
    JOIN Modelo m ON c.fk_id_modelo = m.id_modelo
    JOIN Marca ma ON m.fk_id_marca = ma.id_marca
    JOIN Carro_Cor cc ON c.id_carro = cc.fk_id_carro
    JOIN Cor co ON cc.fk_id_cor = co.id_cor
    JOIN TipoCor tc ON co.fk_id_TipoCor = tc.id_TipoCor
    WHERE id_cliente = C
    GROUP BY c.id_carro;
    
END $$
DELIMITER ;
-- Testando a procedures
CALL ListarCarrosPorCliente(10);

-- Procedure 2: Contar carros por tipo de tinta
DELIMITER $$
CREATE PROCEDURE ContarCarrosPorTipoTinta()
BEGIN
    SELECT 
        tc.TipoCor AS tipo_tinta,
        COUNT(DISTINCT cc.fk_id_carro) AS quantidade_carros
    FROM TipoCor tc
    LEFT JOIN Cor co ON tc.id_TipoCor = co.fk_id_TipoCor
    LEFT JOIN Carro_Cor cc ON co.id_cor = cc.fk_id_cor
    GROUP BY tc.TipoCor
    ORDER BY quantidade_carros DESC;
END $$
DELIMITER ;

-- Procedure 3: Listar clientes sem telefone cadastrado
DELIMITER $$
CREATE PROCEDURE ListarClientesSemTelefone()
BEGIN
    SELECT 
        c.id_cliente,
        c.nome,
        c.sexo
    FROM Cliente c
    LEFT JOIN Telefone t ON c.id_cliente = t.fk_id_cliente
    WHERE t.id_telefone IS NULL;
END $$
DELIMITER ;