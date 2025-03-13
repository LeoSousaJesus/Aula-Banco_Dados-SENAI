/*
1. Projetar todos os contatos
2. projetar o contato de um determinado nome;
3. projetar o contato de um determinado email;
4. projetar o contato de um determinado telefone;
5. projetar o contator cujo nome começa com uma determinada letra;
6. projetar o contato cujo e-mail, começa com determinadas letras;
7. projetar os contatos em ordem alfabética crescente e decrescente;
8. projetar todos os contatos sem email.
9. projetar todas as uf;
10. projetar os ddd por uf;
11. projetar os nomes por uf;
*/


-- 1. Projetar todos os contatos
SELECT * FROM contato;

-- 2. Projetar o contato de um determinado nome
SELECT * FROM contato WHERE nome = 'João Silva';

-- 3. Projetar o contato de um determinado email
SELECT * FROM contato WHERE email = 'lucaspereira@icloud.com';

-- 4. Projetar o contato de um determinado telefone
SELECT * FROM contato WHERE telefone = '987654321';

-- 5. Projetar o contato cujo nome começa com uma determinada letra
SELECT * FROM contato WHERE nome LIKE 'J%';

-- 6. Projetar o contato cujo e-mail começa com determinadas letras
SELECT * FROM contato WHERE email LIKE 'a%';

-- 7. Projetar os contatos em ordem alfabética crescente
SELECT * FROM contato ORDER BY nome ASC;

-- Projetar os contatos em ordem decrescente
SELECT * FROM contato ORDER BY nome DESC;

-- 8. Projetar todos os contatos sem email
SELECT * FROM contato WHERE email IS NULL;

-- 9. Projetar todas as UF
SELECT DISTINCT UF FROM contato;

-- 10. Projetar os DDD por UF
SELECT UF, GROUP_CONCAT(DISTINCT ddd) AS ddds FROM contato GROUP BY UF;

-- 11. Projetar os nomes por UF
SELECT UF, GROUP_CONCAT(nome) AS nomes FROM contato GROUP BY UF;