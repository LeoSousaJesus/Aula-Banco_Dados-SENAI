-- Inserções para a tabela Cliente
INSERT INTO Cliente (IdCliente, Nome, CPF) VALUES
(1, 'Hebert Sousa', '145.081.389-11'),
(2, 'Marta Oliver', '255.067.890-22'),
(3, 'Roberto Firmino', '144.078.901-20'),
(4, 'Adélia Pereira', '256.089.812-04'),
(5, 'Marco Carvalho', '167.090.923-50'),
(6, 'Peitro Almeida', '052.177.188-19'),
(7, 'Fernanda Lima', '070.080.191-05'),
(8, 'Ricardo Braga', '010.151.530-11'),
(9, 'Patricia Martins', '019.411.221-13'),
(10, 'Lucas Rocha', '061.845.269-30'),
(11, 'Camila Barbosa', '012.450.719-56'),
(12, 'Gustavo Cardoso', '034.507.892-01'),
(13, 'Isabela Dias', '045.278.701-12'),
(14, 'Roberto Melo', '056.709.812-53'),
(15, 'Tatiane Castro', '051.881.103-44'),
(16, 'Daniel Ferreira', '078.901.524-05'),
(17, 'Amanda Gonçalves', '089.412.845-56'),
(18, 'Marcos Ribeiro', '040.333.150-70'),
(19, 'Larissa Carvalho', '011.724.917-18'),
(20, 'Eduardo Melo', '012.345.598-21');

-- Inserções para a tabela Veículo
INSERT INTO Veiculo (IdVeiculo, Placa, Modelo, Cor, fk_IdCliente) VALUES
(1, 'JJC-1134', 'Gol', 'Branco', 1),
(2, 'JEF-0698', 'Onix', 'Preto', 2),
(3, 'JHI-9092', 'HB20', 'Prata', 3),
(4, 'JKL-3056', 'Corolla', 'Vermelho', 4),
(5, 'JNO-7591', 'Civic', 'Azul', 5),
(6, 'JQP-1530', 'Gol', 'Verde', 1),
(7, 'JTS-5678', 'Onix', 'Cinza', 2),
(8, 'JWX-9512', 'HB20', 'Preto', 8),
(9, 'JJA-3206', 'Corolla', 'Vermelho', 9),
(10, 'JCA-7150', 'Civic', 'Azul', 10),
(11, 'JFK-1954', 'Onix', 'Branco', 11),
(12, 'JIJ-5172', 'HB20', 'Preto', 12),
(13, 'JLH-9411', 'Gol', 'Prata', 13),
(14, 'JPD-1287', 'Corolla', 'Vermelho', 14),
(15, 'JRI-1580', 'Civic', 'Azul', 15),
(16, 'JUH-4434', 'Onix', 'Branco', 16),
(17, 'JSD-1346', 'HB20', 'Preto', 17),
(18, 'JFV-4345', 'Gol', 'Prata', 18),
(19, 'JJA-1437', 'Corolla', 'Vermelho', 19),
(20, 'JNH-3990', 'Civic', 'Azul', 20);

-- Inserções para a tabela Telefone
INSERT INTO Telefone (idTelefone, DDD, numero, fk_IdCliente) VALUES
(1, '61', '99322-9192', 1),
(2, '61', '99318-2188', 1),
(3, '61', '99371-3317', 2),
(4, '61', '99166-0521', 3),
(5, '61', '99242-0215', 4),
(6, '61', '99012-0481', 5),
(7, '61', '99211-1478', 7),
(8, '61', '99528-0568', 8),
(9, '61', '998431-2954', 9),
(10, '61', '99267-0012', 10),
(11, '61', '99182-2025', 11),
(12, '61', '99253-1931', 12),
(13, '61', '99443-4954', 13),
(14, '61', '99546-5522', 14),
(15, '61', '99515-5906', 15),
(16, '61', '99588-1415', 16),
(17, '61', '99027-6325', 17),
(18, '61', '99625-4299', 18),
(19, '61', '99126-9156', 19),
(20, '61', '99105-1711', 20);

-- Inserções para a tabela TipoVaga
INSERT INTO TipoVaga (IdTipoVaga, TipoVaga) VALUES
(1, 'Idoso'),
(2, 'Especial'),
(3, 'Gravida');

-- Inserções para a tabela Vaga
INSERT INTO Vaga (IdVaga, StatusVaga, fk_IdTipoVaga) VALUES
(1, 0, 1), (2, 0, 1), (3, 0, 1), (4, 0, 1), (5, 0, 1),
(6, 1, 2), (7, 0, 2), (8, 1, 2),
(9, 1, 3), (10, 1, 1),
(11, 0, 1), (12, 0, 2),
(13, 0, 3), (14, 0, 3), (15, 0, 3);

-- Inserções para a tabela Ticket
INSERT INTO Ticket (IdTicket, Hora_entrada, Hora_saida, fk_IdCliente, fk_IdVaga) VALUES
(1, '08:30:00', '12:45:00', 1, 2),
(2, '09:15:00', '13:23:00', 2, 6),
(3, '10:00:00', '15:30:00', 3, 1),
(4, '11:20:00', NULL, 4, 12),
(5, '12:00:00', '16:00:00', 5, 5),
-- Clientes 6-10 usando vagas Especiais
(6, '08:30:00', '12:30:00', 6, 6),
(7, '09:30:00', '13:30:00', 7, 7),
(8, '10:30:00', '14:30:00', 8, 8),
(9, '11:30:00', '15:30:00', 9, 9),
(10, '12:30:00', '16:30:00', 10, 10),
-- Clientes 11-15 usando vagas para Grávida
(11, '08:14:00', '12:04:00', 11, 11),
(12, '09:21:00', '13:11:00', 12, 12),
(13, '10:01:00', '14:22:00', 13, 13),
(14, '11:24:00', '15:02:00', 14, 14),
(15, '12:01:00', '16:44:00', 15, 15),
-- Clientes 16-20 sem ticket (vagas ainda disponíveis)
(16, '13:00:00', NULL, 16, NULL),
(17, '14:00:00', NULL, 17, NULL),
(18, '15:00:00', NULL, 18, NULL),
(19, '16:00:00', NULL, 19, NULL),
(20, '17:00:00', NULL, 20, NULL);