CREATE DATABASE BD_Spotymusic;
USE BD_Spotymusic;

CREATE TABLE Compositor(
	IdCompositor INT PRIMARY KEY AUTO_INCREMENT,
    compositor VARCHAR(25) NOT NULL,
    sobrenome VARCHAR(25) NOT NULL
);

CREATE TABLE Genero(
	IdGenero INT PRIMARY KEY AUTO_INCREMENT,
    genero VARCHAR(15) NOT NULL
);

CREATE TABLE Artista(
	IdArtista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(15) NOT NULL,
    fkid_genero INT,
    FOREIGN KEY (fkid_genero) REFERENCES Genero(IdGenero) ON DELETE CASCADE
);

CREATE TABLE Album(
	IdAlbum INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(20) NOT NULL,
    ano YEAR NOT NULL,
    fkid_artista INT,
    FOREIGN KEY (fkid_artista) REFERENCES Artista(IdArtista) ON DELETE CASCADE
);

CREATE TABLE Playlist(
	IdPlaylist INT PRIMARY KEY AUTO_INCREMENT,
    playlist VARCHAR(25) NOT NULL
);

CREATE TABLE Musica (
	IdMusica INT PRIMARY KEY AUTO_INCREMENT,
    musica VARCHAR(25) NOT NULL,
    duracao TIME NOT NULL,
    fkid_compositor INT,
    fkid_genero INT,
    fkid_album INT,
    FOREIGN KEY (fkid_compositor) REFERENCES Compositor(IdCompositor) ON DELETE CASCADE,
    FOREIGN KEY (fkid_genero) REFERENCES Genero(IdGenero) ON DELETE CASCADE,
    FOREIGN KEY (fkid_album) REFERENCES Album(IdAlbum) ON DELETE CASCADE
);

CREATE TABLE musica_playlist(
	fkid_musica INT,
    fkid_playlist INT,
    PRIMARY KEY(fkid_musica, fkid_playlist),
    FOREIGN KEY (fkid_musica) REFERENCES Musica(IdMusica) ON DELETE CASCADE,
    FOREIGN KEY (fkid_playlist) REFERENCES Playlist(IdPlaylist) ON DELETE CASCADE
);
