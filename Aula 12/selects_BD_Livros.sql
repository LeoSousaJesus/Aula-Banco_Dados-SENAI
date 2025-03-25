-- 1. Projetar todos os livros
SELECT * FROM livro;

-- 2. Projetar todas as editoras
SELECT * FROM editora;

-- 3. Projetar todos os livros e suas editoras
SELECT l.*, e.nomeeditora 
FROM livro l
JOIN editora e ON l.fk_idEditora = e.idEditora;

-- 4. Projetar todos os autores
SELECT * FROM autor;

-- 5. Projetar todos os autores e seus livros
SELECT a.*, l.titulo AS livro
FROM autor a
LEFT JOIN livro l ON a.idAutor = l.fk_idAutor;

-- 6. Projetar livros e seus valores
SELECT titulo, valor FROM livro;

-- 7. Projetar autores, e-mail, livros e valores
SELECT a.nome, a.email, l.titulo AS livro, l.valor
FROM autor a
LEFT JOIN livro l ON a.idAutor = l.fk_idAutor;

-- 8. Projetar autor, sexo, livro e editoras
SELECT a.nome AS autor, a.sexo, l.titulo AS livro, e.nomeeditora AS editora
FROM autor a
LEFT JOIN livro l ON a.idAutor = l.fk_idAutor
LEFT JOIN editora e ON l.fk_idEditora = e.idEditora;

-- 9. Projetar identificação da editora e os livros cadastrados
SELECT e.idEditora, e.nomeeditora, l.titulo AS livro
FROM editora e
LEFT JOIN livro l ON e.idEditora = l.fk_idEditora;

-- 10. Projetar autor, livro, tipocategoria e isbn
SELECT a.nome AS autor, l.titulo AS livro, c.tipoCategoria, l.isbn
FROM autor a
JOIN livro l ON a.idAutor = l.fk_idAutor
JOIN categoria c ON l.fk_idCategoria = c.idCategoria;

-- 11. Projetar todas as categorias e seus livros
SELECT c.tipoCategoria, l.titulo AS livro
FROM categoria c
LEFT JOIN livro l ON c.idCategoria = l.fk_idCategoria;

-- 12. Projetar quantidade de autores
SELECT COUNT(*) AS total_autores FROM autor;

-- 13. Projetar autores agrupados por sexo
SELECT sexo, COUNT(*) AS quantidade
FROM autor
GROUP BY sexo;

-- 14. Projetar os livros, valores unitários, valor total na compra de 2 livros de cada
SELECT titulo, valor AS valor_unitario, (valor * 2) AS valor_total_2_unidades
FROM livro;

-- 15. Projetar o livro, valor e desconto de 15%
SELECT titulo, valor, (valor * 0.85) AS valor_com_desconto
FROM livro;

-- 16. Projetar o livro, valor já somado com acréscimo de 10%
SELECT titulo, valor, (valor * 1.10) AS valor_com_acrescimo
FROM livro;

-- 17. Projetar quantidade de editoras
SELECT COUNT(*) AS total_editoras FROM editora;

-- 18. Projetar quantidade de categorias
SELECT COUNT(*) AS total_categorias FROM categoria;

-- 19. Projetar quantidade de categorias agrupadas por tipo
SELECT c.tipoCategoria, COUNT(l.idLivro) AS quantidade_livros
FROM categoria c
LEFT JOIN livro l ON c.idCategoria = l.fk_idCategoria
GROUP BY c.tipoCategoria;

-- 20. Projetar todos os livros, editoras, e-mail, categoria, valores
SELECT l.titulo AS livro, e.nomeeditora AS editora, e.email, c.tipoCategoria, l.valor
FROM livro l
JOIN editora e ON l.fk_idEditora = e.idEditora
JOIN categoria c ON l.fk_idCategoria = c.idCategoria;

-- 21. Projetar todos os livros, editoras, CNPJ, Tipocategoria, valores
SELECT l.titulo AS livro, e.nomeeditora AS editora, e.cnpj, c.tipoCategoria, l.valor
FROM livro l
JOIN editora e ON l.fk_idEditora = e.idEditora
JOIN categoria c ON l.fk_idCategoria = c.idCategoria;

-- 22. Projetar Editoras, CNPJ, livro e datalancamento
SELECT e.nomeeditora AS editora, e.cnpj, l.titulo AS livro, l.datalancamento
FROM editora e
JOIN livro l ON e.idEditora = l.fk_idEditora;

-- 23. Projetar todos os livros que foram lançados entre duas datas
SELECT titulo, datalancamento 
FROM livro
WHERE datalancamento BETWEEN '2010-01-01' AND '2020-12-31';

-- 24. Projetar livros que foram lançados em uma determinada data, valor, desconto de 50%
SELECT titulo, valor, (valor * 0.50) AS valor_com_desconto, datalancamento
FROM livro
WHERE YEAR(datalancamento) = 2017;

-- 25. Projetar todos os livros, ISBN, editora, telefone, e-mail de uma determinada categoria
SELECT l.titulo, l.isbn, e.nomeeditora, t.numero AS telefone, e.email
FROM livro l
JOIN editora e ON l.fk_idEditora = e.idEditora
JOIN categoria c ON l.fk_idCategoria = c.idCategoria
JOIN telefone t ON e.idEditora = t.fk_idCategoria
WHERE c.tipoCategoria = 'Fantasia';

-- 26. Projetar os autores, CPF, de um determinado tipo de livro
SELECT a.nome, a.cpf
FROM autor a
JOIN livro l ON a.idAutor = l.fk_idAutor
JOIN categoria c ON l.fk_idCategoria = c.idCategoria
WHERE c.tipoCategoria = 'Terror';

-- 27. Criar view com a projeção livro, isbn, editora, datalancamento
CREATE VIEW vw_livros_editoras AS
SELECT l.titulo AS livro, l.isbn, e.nomeeditora AS editora, l.datalancamento
FROM livro l
JOIN editora e ON l.fk_idEditora = e.idEditora;

-- 28. Criar view com projeção de livros, editoras e valores
CREATE VIEW vw_livros_valores AS
SELECT l.titulo AS livro, e.nomeeditora AS editora, l.valor
FROM livro l
JOIN editora e ON l.fk_idEditora = e.idEditora;

-- 29. Criar uma view com desconto de 30% para uma determinada editora
CREATE VIEW vw_livros_desconto_editora AS
SELECT l.titulo AS livro, e.nomeeditora AS editora, l.valor, (l.valor * 0.70) AS valor_com_desconto
FROM livro l
JOIN editora e ON l.fk_idEditora = e.idEditora
WHERE e.nomeeditora = 'Companhia das Letras';

-- 30. Mostrar todas as views
SHOW FULL TABLES WHERE TABLE_TYPE LIKE 'VIEW';