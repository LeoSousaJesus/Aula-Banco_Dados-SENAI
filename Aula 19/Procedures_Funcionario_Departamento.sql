/*
    procedure para inserir funcionários
*/
CREATE PROCEDURE InserirFuncionario(
    IN p_Nome VARCHAR(100),
    IN p_Id_departamento INT,
    IN p_Sexo CHAR(1),
    IN p_Email VARCHAR(100),
    IN p_fk_Departamento_Id_departamento INT
)
BEGIN
    INSERT INTO Funcionario (Nome, Id_departamento, Sexo, Email, fk_Departamento_Id_departamento)
    VALUES (p_Nome, p_Id_departamento, p_Sexo, p_Email, p_fk_Departamento_Id_departamento);
END;
-- Chamada da procedure para inserir um funcionário
CALL InserirFuncionario('Jorge Sousa', 2, 'M', 'jorgesousa@gmail.com', 2);


/*
    procedure para inserir departamentos
*/
CREATE PROCEDURE InserirDepartamento(
    IN p_Departamento VARCHAR(100),
    IN p_Admissao DATE,
    IN p_Salario FLOAT(8,2),
    IN p_Cargo VARCHAR(100)
)
BEGIN
    INSERT INTO Departamento (Departamento, Admissao, Salario, Cargo)
    VALUES (p_Departamento, p_Admissao, p_Salario, p_Cargo);
END;
-- Chamada da procedure para inserir um departamento
CALL InserirDepartamento('Marketing', '2025-03-01', 7000.00, 'Analista de Marketing');
