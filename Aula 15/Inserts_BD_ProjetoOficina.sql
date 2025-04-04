-- INSERTS BD_ProjetoOficina

INSERT INTO Cliente (nome, sexo) VALUES 
('Thomas Figueira', 'M'),
('Clarice Santos', 'F'),
('Cesar Pereira', 'M'),
('Ana Rodrigues', 'F'),
('Pietro Alves', 'M'),
('Luciana Ferreira', 'F'),
('Marcondes Nunes', 'M'),
('Julia Costa', 'F'),
('Fernan Barbosa', 'M'),
('Patricia Martins', 'F'),
('Ricard Gomes', 'M'),
('Sandra Castro', 'F'),
('Enzo Lima', 'M'),
('Valentina Ribeiro', 'F'),
('Luca Cardoso', 'M');

INSERT INTO TipoTelefone (id_TipoTelefone, TipoTelefone) VALUES 
(1, 'Celular'),
(2, 'Fixo');

INSERT INTO Telefone (numero, DDD, fk_id_cliente, fk_id_TipoTelefone) VALUES 
('99254-1088', '61', 1, 1),
('93333-1777', '61', 1, 2),
('99128-1411', '61', 2, 1),
('99012-0022', '61', 3, 1),
('9919-3013', '61', 4, 1),
('93354-0414', '61', 5, 2),
('99345-1505', '61', 6, 1),
('93333-1656', '61', 7, 2),
('99202-6677', '61', 8, 1),
('99151-8018', '61', 9, 1),
('93252-0919', '61', 10, 2),
('93425-0099', '61', 11, 2),
('99107-1101', '61', 12, 1),
(NULL, NULL, 13, NULL),
(NULL, NULL, 14, NULL),
(NULL, NULL, 15, NULL);

INSERT INTO Marca (marca) VALUES 
('Volkswagen'),
('Fiat'),
('Ford'),
('Chevrolet'),
('Toyota'),
('Peugeot'),
('Hyundai');

INSERT INTO Modelo (modelo, fk_id_marca) VALUES 
('Gol', 1), ('Polo', 1), ('Virtus', 1),
('Uno', 2), ('Mobi', 2), ('Argo', 2),
('Ka', 3), ('EcoSport', 3), ('Ranger', 3),
('Onix', 4), ('Prisma', 4), ('S10', 4),
('Corolla', 5), ('Etios', 5), ('Hilux', 5),
('206', 6), ('306', 6), ('307', 6);

INSERT INTO TipoCor (id_TipoCor, TipoCor) VALUES 
(1, 'Sólida'),
(2, 'Metálica'),
(3, 'Perolizada');

INSERT INTO Cor (cor, fk_id_TipoCor) VALUES 
('Branco Sólida', 1),
('Preto Sólida', 1),
('Prata Sólida', 1),
('Branco Metálica', 2),
('Preto Metálica', 2),
('Prata Metálica', 2),
('Branco Perolizada', 3),
('Preto Perolizada', 3),
('Prata Perolizada', 3);

INSERT INTO Carro (id_carro, placa, fk_id_cliente, fk_id_modelo) VALUES 
(1, 'JJP1234', 1, 1),
(2, 'JKF5678', 1, 2),
(3, 'JHI9012', 1, 3),
(4, 'JKL3456', 2, 4),
(5, 'JNO7890', 3, 5),
(6, 'JQR1234', 4, 6),
(7, 'JTU5678', 5, 1),
(8, 'JWX9012', 6, 2),
(9, 'JDA3456', 7, 3),
(10, 'JCD7890', 8, 4),
(11, 'JRG1234', 9, 5),
(12, 'JIJ5678', 10, 6),
(13, 'JMO9012', 11, 1),
(14, 'JNP3456', 12, 2),
(15, 'JQS7890', 13, 3),
(16, 'JLV1234', 14, 4),
(17, 'JEY5678', 15, 5),
(18, 'JJA7412', 1, 6),
(19, 'JNF1122', 4, 1),
(20, 'JDB1615', 8, 2);

INSERT INTO Carro_Cor (fk_id_carro, fk_id_cor) VALUES 
(1, 1),
(2, 2), 
(3, 3), (3, 8),        
(4, 2), 
(5, 1),          
(6, 6), 
(7, 7),          
(8, 8), (8, 2),  
(9, 9),  
(10, 5),        
(11, 1),
(12, 3),
(13, 4),
(14, 5),
(15, 6),
(16, 7), 
(17, 9),
(18,2),
(19,5),
(20,7);


