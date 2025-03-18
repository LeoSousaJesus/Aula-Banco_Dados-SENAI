/* Inserindo dados na tabela cliente */

INSERT INTO cliente (nome, sobrenome) VALUES ('João', 'Silva Sousa');
INSERT INTO cliente (nome, sobrenome) VALUES ('Maria', 'Oliveira Tavares');
INSERT INTO cliente (nome, sobrenome) VALUES ('Pedro', 'Souza oliveira');
INSERT INTO cliente (nome, sobrenome) VALUES ('Ana', 'Costa Albuquerque');
INSERT INTO cliente (nome, sobrenome) VALUES ('Carlos', 'Pereira Lima');
INSERT INTO cliente (nome, sobrenome) VALUES ('Fernanda', 'Lima Machado');
INSERT INTO cliente (nome, sobrenome) VALUES ('Ricardo', 'Almeida Conceição');
INSERT INTO cliente (nome, sobrenome) VALUES ('Juliana', 'Martins Pena');
INSERT INTO cliente (nome, sobrenome) VALUES ('Lucas', 'Gomes Augustino');
INSERT INTO cliente (nome, sobrenome) VALUES ('Patrícia', 'Rodrigues de Souza');
INSERT INTO cliente (nome, sobrenome) VALUES ('Marcos', 'Ferreira Klein');
INSERT INTO cliente (nome, sobrenome) VALUES ('Camila', 'Santos Oliveira');
INSERT INTO cliente (nome, sobrenome) VALUES ('Gustavo', 'Rocha Pedroso');
INSERT INTO cliente (nome, sobrenome) VALUES ('Isabela', 'Carvalho Firmino');
INSERT INTO cliente (nome, sobrenome) VALUES ('Rafael', 'Barbosa Gonzales');
INSERT INTO cliente (nome, sobrenome) VALUES ('Amanda', 'Nascimento Avelino');
INSERT INTO cliente (nome, sobrenome) VALUES ('Thiago', 'Cavalcanti Ghrohen');
INSERT INTO cliente (nome, sobrenome) VALUES ('Larissa', 'Dias Poeta');
INSERT INTO cliente (nome, sobrenome) VALUES ('Bruno', 'Mendes Silveira');
INSERT INTO cliente (nome, sobrenome) VALUES ('Vanessa', 'Araújo Reis');
INSERT INTO cliente (nome, sobrenome) VALUES ('Diego', 'Cardoso França');
INSERT INTO cliente (nome, sobrenome) VALUES ('Tatiane', 'Freitas Brasil');
INSERT INTO cliente (nome, sobrenome) VALUES ('Felipe', 'Correia Pamplona');
INSERT INTO cliente (nome, sobrenome) VALUES ('Cristiane', 'Vieira Veneza');
INSERT INTO cliente (nome, sobrenome) VALUES ('Roberto', 'Monteiro Lobato');
INSERT INTO cliente (nome, sobrenome) VALUES ('Aline', 'Moreira Marques');
INSERT INTO cliente (nome, sobrenome) VALUES ('Eduardo', 'Machado Lobão');
INSERT INTO cliente (nome, sobrenome) VALUES ('Mariana', 'Ribeiro Rodrigues');
INSERT INTO cliente (nome, sobrenome) VALUES ('Paulo', 'Fernandes Albiol');
INSERT INTO cliente (nome, sobrenome) VALUES ('Sandra', 'Melo Alvarez');

/* Inserindo dados na tabela tipotelefone */

INSERT INTO tipotelefone (tipotelefone) VALUES ('Celular');
INSERT INTO tipotelefone (tipotelefone) VALUES ('Residencial');
INSERT INTO tipotelefone (tipotelefone) VALUES ('Comercial');

/* Inserindo dados na tabela endereço*/

INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua Avenida Marajá, 108', 'São Paulo', 'SP', 1);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida Brasil, 421', 'Rio de Janeiro', 'RJ', 2);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua dos Pinheiros, 789', 'Belo Horizonte', 'MG', 3);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua das Palmeiras, 321', 'Curitiba', 'PR', 4);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida Paulista, 1000', 'São Paulo', 'SP', 5);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua das Acácias, 806', 'Porto Alegre', 'RS', 6);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua das Rosas, 963', 'Salvador', 'BA', 7);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida das Américas, 321', 'Rio de Janeiro', 'RJ', 8);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua dos Ipês, 451', 'Brasília', 'DF', 9);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua da Aldeota, 248', 'Fortaleza', 'CE', 10);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua Tubarão, 568', 'Recife', 'PE', 11);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida das Nações, 886', 'Manaus', 'AM', 12);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua Tacacá, 789', 'Belém', 'PA', 13);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua Pedro Ludovico, 387', 'Goiânia', 'GO', 14);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida das Flores, 201', 'Campinas', 'SP', 15);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua das Azaleias, 987', 'São Luís', 'MA', 16);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua das Camélias, 652', 'Natal', 'RN', 17);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida das Palmeiras, 524', 'Vitória', 'ES', 18);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua das Gardênias, 789', 'Florianópolis', 'SC', 19);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua do Remo, 908', 'João Pessoa', 'PB', 20);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida Praiana, 741', 'Maceió', 'AL', 21);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua do Rio, 965', 'Teresina', 'PI', 22);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua Circular, 128', 'Cuiabá', 'MT', 23);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida Floresta, 482', 'Campo Grande', 'MS', 24);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua da Pedra, 125', 'Porto Velho', 'RO', 25);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua Crisântemos, 354', 'Boa Vista', 'RR', 26);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida Borboleta, 670', 'Palmas', 'TO', 27);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua Menisa, 846', 'Aracaju', 'SE', 28);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Rua Indios, 487', 'Macapá', 'AP', 29);
INSERT INTO endereco (logradouro, cidade, uf, id_cliente) VALUES ('Avenida das Begônias, 489', 'Rio Branco', 'AC', 30);

/* Inserindo dados na telefone */

INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('11', '98765-4321', 1, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('21', '1234-5678', 2, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('31', '8765-4321', 3, 3);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('41', '7654-3210', 4, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('51', '6543-2109', 5, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('61', '5432-1098', 6, 3);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('71', '4321-0987', 7, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('81', '3210-9876', 8, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('91', '2109-8765', 9, 3);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('12', '1098-7654', 10, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('13', '0987-6543', 11, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('14', '9876-5432', 12, 3);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('15', '8765-4321', 13, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('16', '7654-3210', 14, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('17', '6543-2109', 15, 3);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('18', '5432-1098', 16, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('19', '4321-0987', 17, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('20', '3210-9876', 18, 3);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('21', '2109-8765', 19, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('22', '1098-7654', 20, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('23', '0987-6543', 21, 3);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('24', '9876-5432', 22, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('25', '8765-4321', 23, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('26', '7654-3210', 24, 3);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('27', '6543-2109', 25, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('28', '5432-1098', 26, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('29', '4321-0987', 27, 3);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('30', '3210-9876', 28, 1);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('31', '2109-8765', 29, 2);
INSERT INTO telefone (ddd, numero, id_cliente, id_tipotelefone) VALUES ('32', '1098-7654', 30, 3);