-- SELECTS BD_ProjetoOficina

-- 1. Quantidade de carros
SELECT COUNT(*) AS total_carros FROM Carro;

-- 2. Projetar os carros, modelo, placa
SELECT c.id_carro, m.modelo, c.placa
FROM Carro c
JOIN Modelo m ON c.fk_id_modelo = m.id_modelo;

-- 3. Clientes, telefones, sexo
SELECT cl.nome, cl.sexo, t.numero AS telefone
FROM Cliente cl
LEFT JOIN Telefone t ON cl.id_cliente = t.fk_id_cliente;

-- 4. Clientes e seus modelos de carros
SELECT cl.nome AS cliente, m.modelo
FROM Cliente cl
JOIN Carro c ON cl.id_cliente = c.fk_id_cliente
JOIN Modelo m ON c.fk_id_modelo = m.id_modelo;

-- 5. Cliente, modelo de carro, cor, tipo de tinta
SELECT cl.nome AS cliente, m.modelo, co.cor, tc.TipoCor AS tipo_tinta
FROM Cliente cl
JOIN Carro c ON cl.id_cliente = c.fk_id_cliente
JOIN Modelo m ON c.fk_id_modelo = m.id_modelo
JOIN Carro_Cor cc ON c.id_carro = cc.fk_id_carro
JOIN Cor co ON cc.fk_id_cor = co.id_cor
JOIN TipoCor tc ON co.fk_id_TipoCor = tc.id_TipoCor;

-- 6. Cliente, modelo de carro, cor, marca
SELECT cl.nome AS cliente, m.modelo, co.cor, ma.marca
FROM Cliente cl
JOIN Carro c ON cl.id_cliente = c.fk_id_cliente
JOIN Modelo m ON c.fk_id_modelo = m.id_modelo
JOIN Marca ma ON m.fk_id_marca = ma.id_marca
JOIN Carro_Cor cc ON c.id_carro = cc.fk_id_carro
JOIN Cor co ON cc.fk_id_cor = co.id_cor;

-- 7. Criar 3 procedures que contenham join


-- 8. Criar 2 usuários e conexão, conceber 2 privilégios no banco para cada usuário

