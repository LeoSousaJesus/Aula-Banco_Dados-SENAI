/* 1. Projetar Nome, Sobrenome, Logradouro, UF */
SELECT c.nome, c.sobrenome, e.logradouro, e.uf
FROM cliente c
JOIN endereco e ON c.idcliente = e.id_cliente;

/* 2. Projetar Idcliente, Nome, ddd, Numero */

SELECT c.idcliente, c.nome, t.ddd, t.numero
FROM cliente c
JOIN telefone t ON c.idcliente = t.id_cliente;

/* 3. Projetar Nome, Sobrenome, Logradouro, UF Em Ordem Alfabetica Por UF */

SELECT c.nome, c.sobrenome, e.logradouro, e.uf
FROM cliente c
JOIN endereco e ON c.idcliente = e.id_cliente
ORDER BY e.uf;

/* 4. Projetar Idcliente, Nome, Sobrenome, Logradouro, UF, Em Ordem Alfabetica Por Idcliente */

SELECT c.idcliente, c.nome, c.sobrenome, e.logradouro, e.uf
FROM cliente c
JOIN endereco e ON c.idcliente = e.id_cliente
ORDER BY c.nome;

/* 5. Projetar quantidade de UF cadastrada */

SELECT COUNT(uf) AS quantidade_uf
FROM endereco;

/* 6. Projetar as cidades cadastradas e suas quantidades */

SELECT cidade, COUNT(*) AS quantidade
FROM endereco
GROUP BY cidade;

/* 7. Projetar as cidades cadastradas, suas quantidades em ordem alfabetica */

SELECT cidade, COUNT(*) AS quantidade
FROM endereco
GROUP BY cidade
ORDER BY cidade;

/* 8. Projetar a quantidade de UFs cadastradas sem repetição */

SELECT COUNT(DISTINCT uf) AS quantidade_uf
FROM endereco;

/* 9. Projetar idcliente, nome, sobrenome, UFs, ddds */

SELECT c.idcliente, c.nome, c.sobrenome, e.uf, t.ddd
FROM cliente c
JOIN endereco e ON c.idcliente = e.id_cliente
JOIN telefone t ON c.idcliente = t.id_cliente;

/* 10. Projetar idcliente, nome, sobrenome, UFs, ddds, em ordem crescente por ddd */

SELECT c.idcliente, c.nome, c.sobrenome, e.uf, t.ddd
FROM cliente c
JOIN endereco e ON c.idcliente = e.id_cliente
JOIN telefone t ON c.idcliente = t.id_cliente
ORDER BY t.ddd;

/* 11. Projetar nome, sobrenome, logradouro, ddd, numero de telefone do cliente X */

SELECT c.nome, c.sobrenome, e.logradouro, t.ddd, t.numero
FROM cliente c
JOIN endereco e ON c.idcliente = e.id_cliente
JOIN telefone t ON c.idcliente = t.id_cliente
WHERE c.idcliente = 1;

/* 12. Projetar todos os clientes das UF x e da UF y */

SELECT c.nome, c.sobrenome, e.uf
FROM cliente c
JOIN endereco e ON c.idcliente = e.id_cliente
WHERE e.uf IN ('RJ', 'SP');

/* 13. Projetar todos endereços de 3 UFs */

SELECT *
FROM endereco
WHERE uf IN ('RJ', 'SP', 'DF');

/* 14. Projetar nome, sobrenome, tipotelefone, ddd, numero por ordem de nome */

SELECT c.nome, c.sobrenome, tt.tipotelefone, t.ddd, t.numero
FROM cliente c
JOIN telefone t ON c.idcliente = t.id_cliente
JOIN tipotelefone tt ON t.id_tipotelefone = tt.idtipotelefone
ORDER BY c.nome;

/* 15. Projetar nome, sobrenome, logradouro, cidade, uf, tipotelefone, ddd, numero, por ordem de uf */

SELECT c.nome, c.sobrenome, e.logradouro, e.cidade, e.uf, tt.tipotelefone, t.ddd, t.numero
FROM cliente c
JOIN endereco e ON c.idcliente = e.id_cliente
JOIN telefone t ON c.idcliente = t.id_cliente
JOIN tipotelefone tt ON t.id_tipotelefone = tt.idtipotelefone
ORDER BY e.uf;