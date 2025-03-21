-- Qual o nome, salário e endereço de trabalho dos empregados do sexo feminino
SELECT e.nomeEmpregado, e.salario, d.endereco
FROM Empregado e
JOIN Departamento d ON e.fk_funcionario = d.idDepartamento
WHERE e.sexo = 'F';


-- Qual o endereço de trabalho do funcionário tal
SELECT d.endereco, e.nomeEmpregado
FROM Empregado e
JOIN Departamento d ON e.fk_funcionario = d.idDepartamento
WHERE e.idEmpregado = 1;


/* 1 - Quantidade de pessoas do Sexo Masculino e Feminino */
SELECT sexo, COUNT(*) AS quantidade
FROM Empregado
GROUP BY sexo;


/* 2 - Aumento de salário de 15% para todos empregados */
SELECT nomeEmpregado, salario, salario * 1.15 as aumento_salarial
FROM empregado;


/* 3 - Soma de todos os salários */
SELECT SUM(salario) AS soma_salarios
FROM Empregado;


/* 4 - Mostrar o funcionario com salario mais alto */
SELECT nomeEmpregado, salario
FROM Empregado
ORDER BY salario DESC
LIMIT 1;


/* 5 - Mostrar o funcionario co salario mais baixo */
SELECT nomeEmpregado, salario
FROM Empregado
ORDER BY salario ASC
LIMIT 1;


/* 6 - Mostrar Media de valores de salario por departamento, 4 queries se for 4 departamentos */
SELECT d.nomeDepartamento, AVG(e.salario) AS media_salario
FROM Empregado e
JOIN Departamento d ON e.fk_funcionario = d.idDepartamento
GROUP BY d.nomeDepartamento;


/* 7 - Aumento de salario para um determinado departamento */
SELECT idEmpregado, nomeEmpregado, salario AS salario_atual, salario * 1.10 AS aumento_salarial,
fk_funcionario AS Codigo_Departamento
FROM Empregado
WHERE fk_funcionario = 1;


/* 8 - Aumento de 10% de salario para o sexo feminino */
SELECT idEmpregado, nomeEmpregado, salario AS salario_atual, salario * 1.50 AS salario_com_aumento, sexo
FROM Empregado
WHERE sexo = 'F';