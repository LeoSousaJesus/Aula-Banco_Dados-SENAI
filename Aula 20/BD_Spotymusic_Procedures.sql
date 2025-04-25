USE BD_Spotymusic;

-- PROCEDURE COMPOSITOR
DELIMITER $$
CREATE PROCEDURE sp_inserir_compositor(
    IN p_compositor VARCHAR(25),
    IN p_sobrenome VARCHAR(25)
)
BEGIN
    INSERT INTO Compositor(compositor, sobrenome) VALUES (p_compositor, p_sobrenome);
END $$
DELIMITER ;

CALL sp_inserir_compositor('Jon', 'Bon Jovi');
SELECT * FROM compositor;


-- PROCEDURE GENERO
DELIMITER $$
CREATE PROCEDURE sp_inserir_genero(
    IN p_genero VARCHAR(15)
)
BEGIN
    INSERT INTO Genero(genero) VALUES (p_genero);
END $$
DELIMITER ;

CALL P_INSERT_GENERO("Rock");
SELECT * FROM GENERO;


-- PROCEDURE ARTISTA
DELIMITER $$
CREATE PROCEDURE sp_inserir_artista(
    IN p_nome VARCHAR(15),
    IN p_fkid_genero INT
)
BEGIN
    INSERT INTO Artista(nome, fkid_genero) VALUES (p_nome, p_fkid_genero);
END $$
DELIMITER ;

CALL sp_inserir_artista('Bon Jovi', 1);
SELECT * FROM ARTISTA;


-- PROCEDURE ALBUM
DELIMITER $$
CREATE PROCEDURE sp_inserir_album(
    IN p_titulo VARCHAR(20),
    IN p_ano YEAR,
    IN p_fkid_artista INT
)
BEGIN
    INSERT INTO Album(titulo, ano, fkid_artista) VALUES (p_titulo, p_ano, p_fkid_artista);
END $$
DELIMITER ;

CALL sp_inserir_album("Cross Road", "1994", 1);
SELECT * FROM ALBUM;


-- PROCEDURE MUSICA
DELIMITER $$
CREATE PROCEDURE sp_inserir_musica(
    IN p_musica VARCHAR(25),
    IN p_duracao TIME,
    IN p_fkid_compositor INT,
    IN p_fkid_genero INT,
    IN p_fkid_album INT
)
BEGIN
    INSERT INTO Musica(musica, duracao, fkid_compositor, fkid_genero, fkid_album) 
    VALUES (p_musica, p_duracao, p_fkid_compositor, p_fkid_genero, p_fkid_album);
END $$
DELIMITER ;

CALL sp_inserir_musica('Always', '00:05:53', 1,1,1);
SELECT * FROM MUSICA;

-- PROCEDURE PLAYLIST
DELIMITER $$
CREATE PROCEDURE sp_inserir_playlist(
    IN p_playlist VARCHAR(25)
)
BEGIN
    INSERT INTO Playlist(playlist) VALUES (p_playlist);
END $$
DELIMITER ;

CALL sp_inserir_playlist('Love Songs');
SELECT * FROM PLAYLIST;


-- PROCEDURE MUSICA_PLAYLIST
DELIMITER $$
CREATE PROCEDURE sp_inserir_musica_playlist(
    IN p_fkid_musica INT,
    IN p_fkid_playlist INT
)
BEGIN
    INSERT INTO musica_playlist(fkid_musica, fkid_playlist) 
    VALUES (p_fkid_musica, p_fkid_playlist);
END $$
DELIMITER ;

CALL sp_inserir_musica_playlist(1, 1);
SELECT * FROM MUSICA_PLAYLIST;