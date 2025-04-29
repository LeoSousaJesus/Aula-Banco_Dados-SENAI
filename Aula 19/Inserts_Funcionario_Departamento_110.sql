-- Inserts para a Tabela Departamento

insert into Departamento (Id_departamento, Departamento, Admissao, Salario, Cargo) values
(null, 'Financeiro', '2025-01-13', 5500.00, 'Analista Financeiro'),
(null, 'Tecnologia da Informação', '2025-02-20', 8000.50, 'Analista de Sistemas'),
(null, 'Recursos Humanos', '2024-12-01', 6200.75, 'Analista de Recursos Humanos');

insert into Funcionario (Id_funcionario, Nome, Sexo, Email, fk_Departamento_Id_departamento) values
(null, 'Ana Silva', 'F', 'anasilva@gmail.com', 1),
(null, 'Carlos Souza', 'M', 'carlossouza@gmail.com', 2),
(null, 'Maria Oliveira', 'F', 'mariaoliveira@hotmail.com', 3),
(null, 'João Santos', 'M', 'joaosantos@icloud.com', 1),
(null, 'Fernanda Lima', 'F', 'fernandalima@gmail.com', 2),
(null, 'Ricardo Almeida', 'M', 'ricardoalmeida.hotmail.com', 3),
(null, 'Patrícia Costa', 'F', 'patriciacosta@gmail.com', 1),
(null, 'Lucas Pereira', 'M', 'lucaspereira@icloud.com', 2),
(null, 'Juliana Martins', 'F', 'julianamartins@gmail.com', 3),
(null, 'Roberto Ferreira', 'M', 'robertoferreira@hotmail.com', 1),
(null, 'Tatiane Rocha', 'F', 'tatianerocha@gmail.com', 2),
(null, 'André Mendes', 'M', 'andremendes@gmail.com', 3),
(null, 'Camila Santos', 'F', 'camilasantos@hotmail.com', 1),
(null, 'Felipe Costa', 'M', 'felipecosta@gmail.com', 2),
(null, 'Larissa Almeida', 'F','larissaalmeida@gmail.com', 3);