-- 1- Projetar todos os veículos de uma determinada cor.
SELECT * FROM Veiculo WHERE Cor = 'Branco';

-- 2- Projetar todas as placas cadastradas no sistema.
SELECT Placa FROM Veiculo;

-- 3- Projetar modelos e placas de todos os veículos.
SELECT Modelo, Placa FROM Veiculo;

-- 4- Projetar o nome de todos os clientes.
SELECT Nome FROM Cliente;

-- 5- Projetar cpf, nome de todos clientes.
SELECT CPF, Nome FROM Cliente;

-- 6- Projetar nome, cpf, telefone de todos os clientes.
SELECT c.Nome, c.CPF, CONCAT('(', t.DDD, ') ', t.numero) AS Telefone
FROM Cliente c
LEFT JOIN Telefone t ON c.IdCliente = t.fk_IdCliente;

-- 7- Projetar todos os tickets cadastrados.
SELECT * FROM Ticket;

-- 8- Projetar os tickets de um determinado horário de entrada.
SELECT * FROM Ticket WHERE Hora_entrada = '08:30:00';

-- 9- Projetar os tickets de um determinado horário de saída.
SELECT * FROM Ticket WHERE Hora_saida = '12:45:00';

-- 10- Projetar todas as vagas com status disponível ou livre.
SELECT * FROM Vaga WHERE StatusVaga = 0;

-- 11- Projetar todos os tipos de vagas que estejam disponíveis.
SELECT tv.IdTipoVaga, tv.TipoVaga, COUNT(v.IdVaga) AS VagasDisponiveis
FROM TipoVaga tv
JOIN Vaga v ON tv.IdTipoVaga = v.fk_IdTipoVaga
WHERE v.StatusVaga = 0
GROUP BY tv.IdTipoVaga, tv.TipoVaga;

-- 12- Projetar nomes de clientes, veículos de uma determinada cor.
SELECT c.Nome, v.Modelo, v.Cor
FROM Cliente c
JOIN Veiculo v ON c.IdCliente = v.fk_IdCliente
WHERE v.Cor = 'Preto';

-- 13- Projetar os idcliente de um determinado modelo de veículo.
SELECT fk_IdCliente FROM Veiculo WHERE Modelo = 'Gol';

-- 14- Projetar todos os dados dos clientes, de uma determinada placa.
SELECT c.*
FROM Cliente c
JOIN Veiculo v ON c.IdCliente = v.fk_IdCliente
WHERE v.Placa = 'JJC-1134';

-- 15- Projetar os nomes, cpf e os tickets de uma determinada hora de entrada.
SELECT c.Nome, c.CPF, t.*
FROM Cliente c
JOIN Ticket t ON c.IdCliente = t.fk_IdCliente
WHERE t.Hora_entrada = '08:30:00';

-- 16- Projetar os nomes, cpf e os tickets de uma determinada hora de saída.
SELECT c.Nome, c.CPF, t.*
FROM Cliente c
JOIN Ticket t ON c.IdCliente = t.fk_IdCliente
WHERE t.Hora_saida = '12:45:00';

-- 17- Determinar nomes, cpf, tickets e os tipos de vagas cadastrados para ele.
SELECT c.Nome, c.CPF, t.IdTicket, tv.TipoVaga
FROM Cliente c
JOIN Ticket t ON c.IdCliente = t.fk_IdCliente
JOIN Vaga v ON t.fk_IdVaga = v.IdVaga
JOIN TipoVaga tv ON v.fk_IdTipoVaga = tv.IdTipoVaga;

-- 18- Projetar o nome, cpf, modelo, cor, ticket e o tipo de vaga cadastrado para ele.
SELECT c.Nome, c.CPF, ve.Modelo, ve.Cor, t.IdTicket, tv.TipoVaga
FROM Cliente c
JOIN Veiculo ve ON c.IdCliente = ve.fk_IdCliente
JOIN Ticket t ON c.IdCliente = t.fk_IdCliente
JOIN Vaga v ON t.fk_IdVaga = v.IdVaga
JOIN TipoVaga tv ON v.fk_IdTipoVaga = tv.IdTipoVaga;

-- 19- Projetar nome, modelo, ticket, tipo de vaga de um determinado horário de entrada.
SELECT c.Nome, ve.Modelo, t.IdTicket, tv.TipoVaga
FROM Cliente c
JOIN Veiculo ve ON c.IdCliente = ve.fk_IdCliente
JOIN Ticket t ON c.IdCliente = t.fk_IdCliente
JOIN Vaga v ON t.fk_IdVaga = v.IdVaga
JOIN TipoVaga tv ON v.fk_IdTipoVaga = tv.IdTipoVaga
WHERE t.Hora_entrada = '08:30:00';

-- 20- Projetar nome, modelo, ticket, tipo de vaga de um determinado horário de saida.
SELECT c.Nome, ve.Modelo, t.IdTicket, tv.TipoVaga
FROM Cliente c
JOIN Veiculo ve ON c.IdCliente = ve.fk_IdCliente
JOIN Ticket t ON c.IdCliente = t.fk_IdCliente
JOIN Vaga v ON t.fk_IdVaga = v.IdVaga
JOIN TipoVaga tv ON v.fk_IdTipoVaga = tv.IdTipoVaga
WHERE t.Hora_saida = '12:45:00';

-- 21- Fazer alteração no modelo de carro de 2 clientes.
UPDATE Veiculo SET Modelo = 'Palio' WHERE IdVeiculo = 1;
UPDATE Veiculo SET Modelo = 'I30' WHERE IdVeiculo = 2;

-- 22- Excluir um registro de cliente.

DELETE FROM Ticket WHERE fk_IdCliente = 5;
DELETE FROM Telefone WHERE fk_IdCliente = 5;
DELETE FROM Veiculo WHERE fk_IdCliente = 5;
DELETE FROM Cliente WHERE IdCliente = 5;

-- 23- Inserir mais 1 registro de cliente com vaga de autoridade.
-- Primeiro inserir o novo cliente
INSERT INTO Cliente (IdCliente, Nome, CPF) VALUES
(21, 'Jair Bolsonaro', '015.194.999-81');

-- Inserir um novo tipo de vaga para autoridade (se não existir)
INSERT INTO TipoVaga (IdTipoVaga, TipoVaga) VALUES
(4, 'Autoridade');

-- Inserir uma nova vaga de autoridade
INSERT INTO Vaga (IdVaga, StatusVaga, fk_IdTipoVaga) VALUES
(16, 0, 4);

-- Inserir um ticket para o novo cliente na vaga de autoridade
INSERT INTO Ticket (IdTicket, Hora_entrada, Hora_saida, fk_IdCliente, fk_IdVaga) VALUES
(21, '14:00:00', NULL, 6, 13);
