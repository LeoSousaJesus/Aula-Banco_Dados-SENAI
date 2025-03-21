/* Inserts da tabela departamento */
INSERT INTO Departamento (idDepartamento, nomeDepartamento, endereco) VALUES
(1, 'RH', 'Avenida Guajajara, 980'),
(2, 'TI', 'Avenida Tecnologica, 401'),
(3, 'Vendas', 'Avenida do Comercial, 564');

/* Inserção da tabela empregado */
INSERT INTO Empregado (idEmpregado, nomeEmpregado, salario, fk_funcionario , sexo) VALUES
(1, 'Jessica Silva', 5000.00, 1, 'F'),
(2, 'Kleiton Tavares', 6000.00, 2, 'M'),
(3, 'Mariana Livia Costa', 5500.00, 1, 'F'),
(4, 'Pedro Sampaio', 7000.00, 3, 'M'),
(5, 'Juliana Almeida', 6500.00, 2, 'F'),
(6, 'Fernando Lima', 7200.00, 3, 'M'),
(7, 'Camila Ribeiro', 5300.00, 1, 'F'),
(8, 'Robert Souza', 6800.00, 2, 'M'),
(9, 'Patricia Gomes', 5900.00, 3, 'F'),
(10, 'Lucas Serafim', 6100.00, 1, 'M');