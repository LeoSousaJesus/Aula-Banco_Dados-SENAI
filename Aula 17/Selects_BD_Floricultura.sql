-- 1. Mostrar todos os dados dos clientes
SELECT * FROM Cliente;

-- 2. Listar clientes com seus telefones
SELECT c.nome, c.email, t.DDD, t.numero_telefone 
FROM Cliente c
JOIN Telefone t ON c.id_cliente = t.fk_id_cliente;

-- 3. Produtos mais caros (acima de R$50)
SELECT produto, preco FROM Produto WHERE preco > 50 ORDER BY preco DESC;

-- 4. Encomendas de um cliente específico
SELECT e.id_encomenda, e.data_pedido, e.codigo_rastreio
FROM Encomenda e
JOIN Cliente c ON e.fk_id_cliente = c.id_cliente
WHERE c.nome = 'Mariana Rios';

-- 5. Produtos por tipo
SELECT p.produto, p.preco, t.tipo 
FROM Produto p
JOIN TipoProduto t ON p.fk_id_tipo = t.id_tipo
ORDER BY t.tipo, p.produto;

-- 6. Total gasto por cliente
SELECT c.nome, SUM(p.preco) AS total_gasto
FROM Cliente c
JOIN Encomenda e ON c.id_cliente = e.fk_id_cliente
JOIN Produto p ON e.id_encomenda = p.fk_id_encomenda
GROUP BY c.nome
ORDER BY total_gasto DESC;

-- 7. Produtos mais vendidos
SELECT p.produto, COUNT(*) AS quantidade_vendida
FROM Produto p
GROUP BY p.produto
ORDER BY quantidade_vendida DESC;

-- 8. Encomendas por cidade de entrega
SELECT l.cidade, COUNT(*) AS total_encomendas
FROM Encomenda e
JOIN LocalEntrega l ON e.fk_id_local = l.id_local
GROUP BY l.cidade
ORDER BY total_encomendas DESC;

-- 9. Clientes que fizeram mais encomendas
SELECT c.nome, COUNT(*) AS total_encomendas
FROM Cliente c
JOIN Encomenda e ON c.id_cliente = e.fk_id_cliente
GROUP BY c.nome
ORDER BY total_encomendas DESC;

-- 10. Média de preço por tipo de produto
SELECT t.tipo, AVG(p.preco) AS media_preco
FROM TipoProduto t
JOIN Produto p ON t.id_tipo = p.fk_id_tipo
GROUP BY t.tipo
ORDER BY media_preco DESC;

-- 11. Encomendas com produtos acima da média de preço
SELECT e.id_encomenda, p.produto, p.preco
FROM Encomenda e
JOIN Produto p ON e.id_encomenda = p.fk_id_encomenda
WHERE p.preco > (SELECT AVG(preco) FROM Produto)
ORDER BY p.preco DESC;

-- 12. Clientes que compraram flores
SELECT DISTINCT c.nome
FROM Cliente c
JOIN Encomenda e ON c.id_cliente = e.fk_id_cliente
JOIN Produto p ON e.id_encomenda = p.fk_id_encomenda
JOIN TipoProduto t ON p.fk_id_tipo = t.id_tipo
WHERE t.tipo = 'Flores';

-- 13. Total de vendas por mês
SELECT MONTH(data_pedido) AS mes, SUM(p.preco) AS total_vendas
FROM Encomenda e
JOIN Produto p ON e.id_encomenda = p.fk_id_encomenda
GROUP BY mes
ORDER BY mes;

-- 14. Produtos que nunca foram vendidos
SELECT p.produto
FROM Produto p
LEFT JOIN Encomenda e ON p.fk_id_encomenda = e.id_encomenda
WHERE e.id_encomenda= 2;

-- 15. Detalhes completos de uma encomenda
SELECT e.id_encomenda, e.data_pedido, e.codigo_rastreio,
       c.nome AS cliente, l.logradouro, l.numero, l.cidade,
       p.produto, p.preco, t.tipo
FROM Encomenda e
JOIN Cliente c ON e.fk_id_cliente = c.id_cliente
JOIN LocalEntrega l ON e.fk_id_local = l.id_local
JOIN Produto p ON e.id_encomenda = p.fk_id_encomenda
JOIN TipoProduto t ON p.fk_id_tipo = t.id_tipo
WHERE e.id_encomenda = 1;
