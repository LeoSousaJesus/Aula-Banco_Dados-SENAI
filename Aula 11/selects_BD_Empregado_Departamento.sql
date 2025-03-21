SELECT e.nomeEmpregado, e.salario, d.endereco
FROM Empregado e
JOIN Departamento d ON e.fk_funcionario = d.idDepartamento
WHERE e.sexo = 'F';

SELECT d.endereco, e.nomeEmpregado
FROM Empregado e
JOIN Departamento d ON e.fk_funcionario = d.idDepartamento
WHERE e.idEmpregado = 1;

SELECT sexo, COUNT(*) AS quantidade
FROM Empregado
GROUP BY sexo;

