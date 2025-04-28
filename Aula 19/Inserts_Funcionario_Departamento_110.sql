-- Inserts para a Tabela Departamento

insert into Departamento (Id_departamento, Departamento, Admissao, Salario, Cargo) values
(null, 'Financeiro', '2025-01-13', 5500.00, 'Analista Financeiro'),
(null, 'Tecnologia da Informação', '2025-02-20', 8000.50, 'Analista de Sistemas'),
(null, 'Recursos Humanos', '2024-12-01', 6200.75, 'Analista de Recursos Humanos');

insert into Funcionario (Id_funcionario, Nome, Id_departamento, Sexo, Email, fk_Departamento_Id_departamento) values
(null, 'Ana Silva', 1, 'F', 'anasilva@gmail.com', 1),
(null, 'Carlos Souza', 2, 'M', 'carlossouza@gmail.com', 2),
(null, 'Maria Oliveira', 3, 'F', 'mariaoliveira@hotmail.com', 3),
(null, 'João Santos', 1, 'M', 'joaosantos@icloud.com', 1),
(null, 'Fernanda Lima', 2, 'F', 'fernandalima@gmail.com', 2),
(null, 'Ricardo Almeida', 3, 'M', 'ricardoalmeida.hotmail.com', 3),
(null, 'Patrícia Costa', 1, 'F', 'patriciacosta@gmail.com', 1),
(null, 'Lucas Pereira', 2, 'M', 'lucaspereira@icloud.com', 2),
(null, 'Juliana Martins', 3, 'F', 'julianamartins@gmail.com', 3),
(null, 'Roberto Ferreira', 1, 'M', 'robertoferreira@hotmail.com', 1),
(null, 'Tatiane Rocha', 2, 'F', 'tatianerocha@gmail.com', 2),
(null, 'André Mendes', 3, 'M', 'andremendes@gmail.com', 3),
(null, 'Camila Santos', 1, 'F', 'camilasantos@hotmail.com', 1),
(null, 'Felipe Costa', 2, 'M', 'felipecosta@gmail.com', 2),
(null, 'Larissa Almeida', 3, 'F','larissaalmeida@gmail.com', 3);