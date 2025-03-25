-- Inserindo editoras
INSERT INTO editora (id_editora, nomeeditora, telefone, email, cnpj) VALUES
(1, 'Editora Arqueiro', '(11)1234-5678', 'contato@arqueiro.com.br', '12.345.678/0001-90'),
(2, 'Companhia das Letras', '(21)2345-6789', 'contato@companhiadasletras.com.br', '23.456.789/0001-01'),
(3, 'Editora Rocco', '(31)3456-7890', 'contato@rocco.com.br', '34.567.890/0001-12'),
(4, 'Intrínseca', '(41)4567-8901', 'contato@intrinseca.com.br', '45.678.901/0001-23');

-- Inserindo autores (incluindo 2 sem livros)
INSERT INTO autor (id_autor, nome, email, cpf, sexo) VALUES
(1, 'J.K. Rowling', 'jkrowling@email.com', '111.222.333-44', 'F'),
(2, 'Stephen King', 'sking@email.com', '222.333.444-55', 'M'),
(3, 'George R.R. Martin', 'grrm@email.com', '333.444.555-66', 'M'),
(4, 'Agatha Christie', 'achristie@email.com', '444.555.666-77', 'F'),
(5, 'Machado de Assis', 'machado@email.com', '555.666.777-88', 'M'),
(6, 'Clarice Lispector', 'clarice@email.com', '666.777.888-99', 'F'),
(7, 'Autor Sem Livro 1', 'asl1@email.com', '777.888.999-00', 'M'),
(8, 'Autora Sem Livro 2', 'asl2@email.com', '888.999.000-11', 'F');

-- Inserindo categorias
INSERT INTO categoria (id_categoria, tipocategoria) VALUES
(1, 'Fantasia'),
(2, 'Terror'),
(3, 'Suspense'),
(4, 'Romance'),
(5, 'Ficção Científica'),
(6, 'Literatura Brasileira');

-- Inserindo livros da Editora Arqueiro (id_editora = 1)
INSERT INTO livro (id_livro, isbn, titulo, datalancamento, numeropagina, valor, fk_id_autor, fk_id_editora, fk_id_categoria) VALUES
(1, '978-85-8041-123-4', 'Harry Potter e a Pedra Filosofal', '2000-01-01', 264, 39.90, 1, 1, 1),
(2, '978-85-8041-124-1', 'Harry Potter e a Câmara Secreta', '2000-07-01', 251, 42.50, 1, 1, 1),
(3, '978-85-8041-125-8', 'Harry Potter e o Prisioneiro de Azkaban', '2001-01-01', 317, 45.90, 1, 1, 1),
(4, '978-85-8041-126-5', 'Harry Potter e o Cálice de Fogo', '2001-07-01', 636, 49.90, 1, 1, 1);

-- Inserindo livros da Companhia das Letras (id_editora = 2)
INSERT INTO livro (id_livro, isbn, titulo, datalancamento, numeropagina, valor, fk_id_autor, fk_id_editora, fk_id_categoria) VALUES
(5, '978-85-359-1234-5', 'O Iluminado', '2012-01-01', 464, 59.90, 2, 2, 2),
(6, '978-85-359-1235-2', 'It - A Coisa', '2014-01-01', 1104, 79.90, 2, 2, 2),
(7, '978-85-359-1236-9', 'O Cemitério', '2015-01-01', 416, 49.90, 2, 2, 2),
(8, '978-85-359-1237-6', 'Carrie, a Estranha', '2016-01-01', 272, 39.90, 2, 2, 2);

-- Inserindo livros da Editora Rocco (id_editora = 3)
INSERT INTO livro (id_livro, isbn, titulo, datalancamento, numeropagina, valor, fk_id_autor, fk_id_editora, fk_id_categoria) VALUES
(9, '978-85-325-1234-5', 'A Guerra dos Tronos', '2010-01-01', 592, 69.90, 3, 3, 1),
(10, '978-85-325-1235-2', 'A Fúria dos Reis', '2011-01-01', 656, 72.50, 3, 3, 1),
(11, '978-85-325-1236-9', 'A Tormenta de Espadas', '2012-01-01', 972, 79.90, 3, 3, 1),
(12, '978-85-325-1237-6', 'O Festim dos Corvos', '2013-01-01', 704, 74.90, 3, 3, 1);

-- Inserindo livros da Intrínseca (id_editora = 4)
INSERT INTO livro (id_livro, isbn, titulo, datalancamento, numeropagina, valor, fk_id_autor, fk_id_editora, fk_id_categoria) VALUES
(13, '978-85-8057-123-4', 'Assassinato no Expresso do Oriente', '2017-01-01', 256, 34.90, 4, 4, 3),
(14, '978-85-8057-124-1', 'Morte no Nilo', '2017-06-01', 288, 36.90, 4, 4, 3),
(15, '978-85-8057-125-8', 'O Caso dos Dez Negrinhos', '2018-01-01', 224, 32.90, 4, 4, 3),
(16, '978-85-8057-126-5', 'O Assassinato de Roger Ackroyd', '2018-06-01', 272, 35.90, 4, 4, 3);

-- Inserindo alguns livros de autores brasileiros (distribuídos entre editoras)
INSERT INTO livro (id_livro, isbn, titulo, datalancamento, numeropagina, valor, fk_id_autor, fk_id_editora, fk_id_categoria) VALUES
(17, '978-85-359-1238-3', 'Dom Casmurro', '2019-01-01', 256, 29.90, 5, 2, 6),
(18, '978-85-325-1238-3', 'Memórias Póstumas de Brás Cubas', '2019-06-01', 240, 31.90, 5, 3, 6),
(19, '978-85-8041-127-2', 'A Hora da Estrela', '2020-01-01', 96, 24.90, 6, 1, 6),
(20, '978-85-8057-127-2', 'Laços de Família', '2020-06-01', 176, 26.90, 6, 4, 6);