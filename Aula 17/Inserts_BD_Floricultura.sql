-- Inserir clientes
INSERT INTO Cliente (nome, cpf, email) VALUES
('Ana Clara', '045.456.789-01', 'ana.silva@email.com'),
('Carlos Oliver', '046.167.890-12', 'carlos.oliver@email.com'),
('Mariana Rios', '041.278.901-23', 'mariana.santos@email.com'),
('Pedro Augusto', '042.389.012-34', 'pedro.augusto@email.com'),
('Juliana Lima', '071.590.123-45', 'juliana.lima@email.com'),
('Lucas Albuquerque', '025.101.234-56', 'lucas.albuquerque@email.com'),
('Fernanda Vidal', '026.012.345-67', 'fernanda.vidal@email.com'),
('Jefer Silva', '022.123.456-78', 'jefer.silva@email.com'),
('Patrine Rochedo', '040.234.567-89', 'patricia.roch@email.com'),
('Gustavo Carvalho', '011.345.678-90', 'gustavo.carvalho@email.com');

-- Inserir telefones
INSERT INTO Telefone (numero_telefone, DDD, fk_id_cliente) VALUES
('987654321', 11, 1),
('912345678', 11, 1),
('998877665', 21, 2),
('987654321', 31, 3),
('912345678', 41, 4),
('998877665', 51, 5),
('987654321', 61, 6),
('912345678', 71, 7),
('998877665', 81, 8),
('987654321', 91, 9),
('912345678', 11, 10);

-- Inserir local de entrega
INSERT INTO LocalEntrega (logradouro, numero, cidade, cep) VALUES
('Rua Açores', 73, 'São Paulo', '01234-567'),
('Avenida Brasiliana', 556, 'Rio de Janeiro', '12345-678'),
('Rua Jardins Oliveiras', 189, 'Belo Horizonte', '23456-789'),
('Alameda dos Anjos', 821, 'São Paulo', '34567-890'),
('Rua Curitibano', 202, 'Curitiba', '45678-901'),
('Avenida Paulista', 121, 'São Paulo', '56789-012'),
('Rua das Orquídeas', 404, 'Porto Alegre', '67890-123'),
('Avenida Copacabana', 505, 'Rio de Janeiro', '78901-234'),
('Rua dos Ipês', 606, 'Brasília', '89012-345'),
('Alameda dos Lírios', 707, 'Salvador', '90123-456');

-- Inserir encomendas
INSERT INTO Encomenda (data_pedido, codigo_rastreio, fk_id_cliente, fk_id_local) VALUES
('2025-04-10', 'FL12345678', 1, 1),
('2025-03-11', 'FL23456789', 2, 2),
('2025-03-12', 'FL34567890', 3, 3),
('2025-02-13', 'FL45678901', 4, 4),
('2025-03-14', 'FL56789012', 5, 5),
('2025-04-09', 'FL67890123', 6, 6),
('2025-01-16', 'FL78901234', 7, 7),
('2025-02-17', 'FL89012345', 8, 8),
('2025-02-18', 'FL90123456', 9, 9),
('2025-01-19', 'FL01234567', 10, 10);

-- inserir tipo de produto
INSERT INTO TipoProduto (tipo) VALUES 
('Flores'),
('Chocolates'),
('Presentes'),
('Cartões'),
('Vasos');

-- Inserir produtos
INSERT INTO Produto (produto, preco, fk_id_tipo, fk_id_encomenda) VALUES
('Rosa Vermelha', 15.90, 1, 1),
('Buquê de Margaridas', 89.90, 1, 1),
('Caixa de Bombons Garoto', 35.50, 2, 2),
('Urso de Pelúcia', 45.00, 3, 3),
('Cartão Romântico', 9.90, 4, 4),
('Orquídea Branca', 65.00, 1, 5),
('Cesta de Café da Manhã', 120.00, 3, 6),
('Vaso Decorativo', 75.50, 5, 7),
('Buquê de Rosas', 150.00, 1, 8),
('Caixa de Chocolate Belga', 85.00, 2, 9),
('Pote de Vidro com Mensagem', 42.90, 3, 10),
('Tulipas Coloridas', 55.00, 1, 1),
('Cartão de Aniversário', 7.50, 4, 2),
('Cesta de Frutas', 68.00, 3, 3),
('Vaso de Cristal', 95.00, 5, 4);