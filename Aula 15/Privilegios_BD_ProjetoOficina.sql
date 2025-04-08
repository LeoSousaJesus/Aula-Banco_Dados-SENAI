-- Usuário 1: Gerente da Oficina (acesso completo)
CREATE USER 'gerente'@'localhost' IDENTIFIED BY 'G1234567';
GRANT ALL PRIVILEGES ON ProjetoOficina.* TO 'gerente'@'localhost';
GRANT EXECUTE ON PROCEDURE ProjetoOficina.ListarCarrosPorCliente TO 'gerente'@'localhost';
GRANT EXECUTE ON PROCEDURE ProjetoOficina.ContarCarrosPorTipoTinta TO 'gerente'@'localhost';

-- Usuário 2: Atendente da Oficina (acesso limitado)
CREATE USER 'atendente'@'localhost' IDENTIFIED BY 'A1234567';
GRANT SELECT, INSERT, UPDATE ON ProjetoOficina.Cliente TO 'atendente'@'localhost';
GRANT SELECT, INSERT, UPDATE ON ProjetoOficina.Telefone TO 'atendente'@'localhost';
GRANT SELECT ON ProjetoOficina.Carro TO 'atendente'@'localhost';
GRANT SELECT ON ProjetoOficina.Modelo TO 'atendente'@'localhost';
GRANT SELECT ON ProjetoOficina.Marca TO 'atendente'@'localhost';
GRANT EXECUTE ON PROCEDURE ProjetoOficina.ListarClientesSemTelefone TO 'atendente'@'localhost';