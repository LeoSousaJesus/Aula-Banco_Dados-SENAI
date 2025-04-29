/* Criar 15 Query de Select com inner join de tal forma que nenhum possa ser repetido e que você consiga utilizar todos os
campos da tabela.
*/
-- 1. Selecionar todos os funcionários e seus respectivos departamentos
SELECT f.Nome, f.Sexo, f.Email, d.Departamento, d.Admissao, d.Salario, d.Cargo
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento;

-- 2. Selecionar os nomes dos funcionários e os cargos dos departamentos
SELECT f.Nome, d.Cargo
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento;

-- 3. Selecionar os nomes dos funcionários e os salários dos departamentos
SELECT f.Nome, d.Salario
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento;

-- 4. Selecionar os nomes dos funcionários e as datas de admissão dos departamentos
SELECT f.Nome, d.Admissao
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento;

-- 5. Selecionar os nomes dos funcionários e os departamentos em que trabalham
SELECT f.Nome, d.Departamento
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento;

-- 6. Selecionar os nomes dos funcionários e os e-mails dos departamentos
SELECT f.Nome, f.Email, d.Departamento
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento;

-- 7. Selecionar os nomes dos funcionários e os sexos dos departamentos
SELECT f.Nome, f.Sexo, d.Departamento
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento;

-- 8. Selecionar os nomes dos funcionários e os cargos dos departamentos, filtrando por um cargo específico
SELECT f.Nome, d.Cargo
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento
WHERE d.Cargo = 'Analista Financeiro';

-- 9. Selecionar os nomes dos funcionários e os salários dos departamentos, filtrando por um salário específico
SELECT f.Nome, d.Salario
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento
WHERE d.Salario > 6000.00;

-- 10. Selecionar os nomes dos funcionários e as datas de admissão dos departamentos, filtrando por uma data específica
SELECT f.Nome, d.Admissao
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento
WHERE d.Admissao < '2025-01-01';

-- 11. Selecionar os nomes dos funcionários e os departamentos em que trabalham, filtrando por um departamento específico
SELECT f.Nome, d.Departamento
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento
WHERE d.Departamento = 'Recursos Humanos';

-- 12. Selecionar os nomes dos funcionários e os e-mails dos departamentos, filtrando por um e-mail específico
SELECT f.Nome, f.Email, d.Departamento
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento
WHERE f.Email LIKE '%@gmail.com';

-- 13. Selecionar os nomes dos funcionários e os sexos dos departamentos, filtrando por um sexo específico
SELECT f.Nome, f.Sexo, d.Departamento
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento
WHERE f.Sexo = 'F';

-- 14. Selecionar os nomes dos funcionários e os cargos dos departamentos, ordenando por nome
SELECT f.Nome, d.Cargo
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento
ORDER BY f.Nome ASC;

-- 15. Selecionar os nomes dos funcionários e os salários dos departamentos, ordenando por salário
SELECT f.Nome, d.Salario
FROM Funcionario f
INNER JOIN Departamento d ON f.fk_Departamento_Id_departamento = d.Id_departamento
ORDER BY d.Salario DESC;
