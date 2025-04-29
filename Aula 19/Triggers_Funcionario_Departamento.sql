/*
    Trigger para excluir funcionários
*/
CREATE TRIGGER ExcluirFuncionario
BEFORE DELETE ON Funcionario
FOR EACH ROW
BEGIN
    DECLARE msg VARCHAR(255);
    SET msg = CONCAT('Funcionário ', OLD.Nome, ' excluído com sucesso!');
    SELECT msg;
END;

/*
    Trigger para excluir departamentos
*/
CREATE TRIGGER ExcluirDepartamento
BEFORE DELETE ON Departamento
FOR EACH ROW
BEGIN
    DECLARE msg VARCHAR(255);
    SET msg = CONCAT('Departamento ', OLD.Departamento, ' excluído com sucesso!');
    SELECT msg;
END;

/*
    Trigger para atualizar salário, cargo e departamento
*/
CREATE TRIGGER AtualizarSalarioCargoDepartamento
BEFORE UPDATE ON Funcionario
FOR EACH ROW
BEGIN
    DECLARE msg VARCHAR(255);
    SET msg = CONCAT('Funcionário ', OLD.Nome, ' teve o salário atualizado para ', NEW.Salario, ', cargo atualizado para ',
    NEW.Cargo, ' e departamento atualizado para ', NEW.fk_Departamento_Id_departamento, '.');
    SELECT msg;
END;