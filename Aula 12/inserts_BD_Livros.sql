/* Insert na tabela autor (incluindo 2 sem livros) */
INSERT INTO autor (idAutor, nome, email, cpf, sexo) VALUES
(1, 'J.K. Rowling', 'jkrowling@gmail.com', '111.222.333-44', 'F'),
(2, 'Stephen King', 'sking@gmail.com', '222.333.444-55', 'M'),
(3, 'George R.R. Martin', 'grrm@gmail.com', '333.444.555-66', 'M'),
(4, 'Agatha Christie', 'achristie@gmail.com', '444.555.666-77', 'F'),
(5, 'Machado de Assis', 'assismachado@gmail.com', '555.666.777-88', 'M'),
(6, 'Clarice Lispector', 'claricelispector@gmail.com', '666.777.888-99', 'F'),
(7, 'Isaac Asimov', 'isaacasimov@gmail.com', '777.888.999-00', 'M'),
(8, 'Ariano Suassuna', 'arianosuassuna@gmail.com', '888.999.000-11', 'M');


/* Insert na tabela editora */
INSERT INTO editora (idEditora, nomeeditora, email, cnpj) VALUES
(1, 'Editora Arqueiro', 'atendimento@editoraarqueiro.com.br', '06.985.027/0001-67'),
(2, 'Companhia das Letras', 'contato@companhiadasletras.com.br', '55.789.390/0001-12'),
(3, 'Editora Rocco', 'rocco@rocco.com.br', '42.444.703/0001-59'),
(4, 'Intrínseca', 'contato@intrinseca.com.br', '05.660.045/0001-06');


/* Insert na tabela categoria */
INSERT INTO categoria (idCategoria, tipocategoria) VALUES
(1, 'Fantasia'),
(2, 'Terror'),
(3, 'Suspense'),
(4, 'Romance'),
(5, 'Ficção Científica'),
(6, 'Literatura Brasileira');


/* insert na tabela telefone */
INSERT INTO telefone (idTelefone, DDD, numero, fk_idCategoria) VALUES
(1, '11', '3868-4492', 1),
(2, '11', '94292-7189', 2),
(3, '21', '3525-2000', 3),
(4, '21', '3206-7400', 4);


/* Insert na tabela livro para Editora Arqueiro (idEditora = 1) */
INSERT INTO livro (idLivro, titulo, isbn, datalancamento, numeropagina, valor, fk_idAutor, fk_idEditora, fk_idCategoria) VALUES
(1, 'Harry Potter e a Pedra Filosofal', '978-85-8041-123-4', '2000-01-01', 264, 39.90, 1, 1, 1),
(2, 'Harry Potter e a Câmara Secreta', '978-85-8041-124-1', '2000-07-01', 251, 42.50, 1, 1, 1),
(3, 'Harry Potter e o Prisioneiro de Azkaban', '978-85-8041-125-8', '2001-01-01', 317, 45.90, 1, 1, 1),
(4, 'Harry Potter e o Cálice de Fogo', '978-85-8041-126-5', '2001-07-01', 636, 49.90, 1, 1, 1);

/* Insert na tabela livro para Editora Companhia das Letras (idEditora = 2) */
INSERT INTO livro (idLivro, titulo, isbn, datalancamento, numeropagina, valor, fk_idAutor, fk_idEditora, fk_idCategoria) VALUES
(5, 'O Iluminado', '978-85-359-1234-5', '2012-01-01', 464, 59.90, 2, 2, 2),
(6, 'It - A Coisa', '978-85-359-1235-2', '2014-01-01', 1104, 79.90, 2, 2, 2),
(7, 'O Cemitério', '978-85-359-1236-9', '2015-01-01', 416, 49.90, 2, 2, 2),
(8, 'Carrie, a Estranha', '978-85-359-1237-6','2016-01-01', 272, 39.90, 2, 2, 2);

/* Insert na tabela livro para Editora Rocco (idEditora = 3) */
INSERT INTO livro (idLivro, titulo, isbn, datalancamento, numeropagina, valor, fk_idAutor, fk_idEditora, fk_idCategoria) VALUES
(9, 'A Guerra dos Tronos', '978-85-325-1234-5', '2010-01-01', 592, 69.90, 3, 3, 1),
(10, 'A Fúria dos Reis', '978-85-325-1235-2', '2011-01-01', 656, 72.50, 3, 3, 1),
(11, 'A Tormenta de Espadas', '978-85-325-1236-9', '2012-01-01', 972, 79.90, 3, 3, 1),
(12, 'O Festim dos Corvos', '978-85-325-1237-6', '2013-01-01', 704, 74.90, 3, 3, 1);

/* Insert na tabela livro para Editora Intrínseca (idEditora = 4) */
INSERT INTO livro (idLivro, titulo, isbn, datalancamento, numeropagina, valor, fk_idAutor, fk_idEditora, fk_idCategoria) VALUES
(13, 'Assassinato no Expresso do Oriente', '978-85-8057-123-4', '2017-01-01', 256, 34.90, 4, 4, 3),
(14, 'Morte no Nilo', '978-85-8057-124-1', '2017-06-01', 288, 36.90, 4, 4, 3),
(15, 'O Caso dos Dez Negrinhos', '978-85-8057-125-8', '2018-01-01', 224, 32.90, 4, 4, 3),
(16, 'O Assassinato de Roger Ackroyd', '978-85-8057-126-5', '2018-06-01', 272, 35.90, 4, 4, 3);

/* Insert na tabela livro para autores brasileiros (distribuídos entre editoras) */
INSERT INTO livro (idLivro, titulo, isbn, datalancamento, numeropagina, valor, fk_idAutor, fk_idEditora, fk_idCategoria) VALUES
(17, 'Dom Casmurro', '978-85-359-1238-3', '2019-01-01', 256, 29.90, 5, 2, 6),
(18, 'Memórias Póstumas de Brás Cubas', '978-85-325-1238-3', '2019-06-01', 240, 31.90, 5, 3, 6),
(19, 'A Hora da Estrela', '978-85-8041-127-2', '2020-01-01', 96, 24.90, 6, 1, 6),
(20, 'Laços de Família', '978-85-8057-127-2', '2020-06-01', 176, 26.90, 6, 4, 6);