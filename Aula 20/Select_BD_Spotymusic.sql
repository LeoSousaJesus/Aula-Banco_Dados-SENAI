-- 1. Listar todas as músicas com seus respectivos álbuns e artistas:
SELECT m.musica, a.titulo AS album, ar.nome AS artista
FROM Musica m
INNER JOIN Album a ON m.fkid_album = a.IdAlbum
INNER JOIN Artista ar ON a.fkid_artista = ar.IdArtista;

-- 2. Mostrar todas as playlists com as músicas contidas nelas
SELECT p.playlist, m.musica, al.titulo AS album
FROM Playlist p
INNER JOIN musica_playlist mp ON p.IdPlaylist = mp.fkid_playlist
INNER JOIN Musica m ON mp.fkid_musica = m.IdMusica
INNER JOIN Album al ON m.fkid_album = al.IdAlbum;

-- 3. Listar todos os álbuns com seu gênero musical
SELECT al.titulo AS album, al.ano, g.genero
FROM Album al
INNER JOIN Artista ar ON al.fkid_artista = ar.IdArtista
INNER JOIN Genero g ON ar.fkid_genero = g.IdGenero;

-- 4. Mostrar músicas com seus compositores
SELECT m.musica, c.compositor, c.sobrenome
FROM Musica m
INNER JOIN Compositor c ON m.fkid_compositor = c.IdCompositor;

-- 5. Listar todas as músicas de um determinado gênero
SELECT m.musica, ar.nome AS artista, al.titulo AS album
FROM Musica m
INNER JOIN Album al ON m.fkid_album = al.IdAlbum
INNER JOIN Artista ar ON al.fkid_artista = ar.IdArtista
INNER JOIN Genero g ON ar.fkid_genero = g.IdGenero
WHERE g.genero = 'Rock';

-- 6. Mostrar a duração total de cada playlist
SELECT p.playlist, SEC_TO_TIME(SUM(TIME_TO_SEC(m.duracao))) AS duracao_total
FROM Playlist p
INNER JOIN musica_playlist mp ON p.IdPlaylist = mp.fkid_playlist
INNER JOIN Musica m ON mp.fkid_musica = m.IdMusica
GROUP BY p.playlist;

-- 7. Listar artistas e quantos álbuns cada um possui
SELECT ar.nome, COUNT(al.IdAlbum) AS total_albuns
FROM Artista ar
INNER JOIN Album al ON ar.IdArtista = al.fkid_artista
GROUP BY ar.nome;

-- 8. Mostrar músicas compostas por um determinado compositor
SELECT m.musica, al.titulo AS album, ar.nome AS artista
FROM Musica m
INNER JOIN Compositor c ON m.fkid_compositor = c.IdCompositor
INNER JOIN Album al ON m.fkid_album = al.IdAlbum
INNER JOIN Artista ar ON al.fkid_artista = ar.IdArtista
WHERE c.compositor = 'Paul' AND c.sobrenome = 'McCartney';

-- 9. Listar todas as músicas lançadas em um determinado ano
SELECT m.musica, ar.nome AS artista, al.titulo AS album
FROM Musica m
INNER JOIN Album al ON m.fkid_album = al.IdAlbum
INNER JOIN Artista ar ON al.fkid_artista = ar.IdArtista
WHERE al.ano = 2017;

-- 10. Mostrar quantas músicas cada artista tem no banco de dados
SELECT ar.nome, COUNT(m.IdMusica) AS total_musicas
FROM Artista ar
INNER JOIN Album al ON ar.IdArtista = al.fkid_artista
INNER JOIN Musica m ON al.IdAlbum = m.fkid_album
GROUP BY ar.nome
ORDER BY total_musicas DESC;

-- 11. Listar playlists que contêm músicas de um determinado artista
SELECT DISTINCT p.playlist
FROM Playlist p
INNER JOIN musica_playlist mp ON p.IdPlaylist = mp.fkid_playlist
INNER JOIN Musica m ON mp.fkid_musica = m.IdMusica
INNER JOIN Album al ON m.fkid_album = al.IdAlbum
INNER JOIN Artista ar ON al.fkid_artista = ar.IdArtista
WHERE ar.nome = 'The Beatles';

-- 12. Mostrar a média de duração das músicas por gênero musical
SELECT g.genero, SEC_TO_TIME(AVG(TIME_TO_SEC(m.duracao))) AS media_duracao
FROM Genero g
INNER JOIN Artista ar ON g.IdGenero = ar.fkid_genero
INNER JOIN Album al ON ar.IdArtista = al.fkid_artista
INNER JOIN Musica m ON al.IdAlbum = m.fkid_album
GROUP BY g.genero;

-- 13. Listar álbuns com mais de 8 músicas
SELECT al.titulo, ar.nome AS artista, COUNT(m.IdMusica) AS total_musicas
FROM Album al
INNER JOIN Artista ar ON al.fkid_artista = ar.IdArtista
INNER JOIN Musica m ON al.IdAlbum = m.fkid_album
GROUP BY al.titulo, ar.nome
HAVING COUNT(m.IdMusica) > 8;

-- 14. Mostrar músicas que estão em mais de uma playlist
SELECT m.musica, COUNT(mp.fkid_playlist) AS num_playlists
FROM Musica m
INNER JOIN musica_playlist mp ON m.IdMusica = mp.fkid_musica
GROUP BY m.musica
HAVING COUNT(mp.fkid_playlist) > 1;

-- 15. Listar compositores e quantas músicas compuseram
SELECT c.compositor, c.sobrenome, COUNT(m.IdMusica) AS total_musicas
FROM Compositor c
INNER JOIN Musica m ON c.IdCompositor = m.fkid_compositor
GROUP BY c.compositor, c.sobrenome
ORDER BY total_musicas DESC;

-- 16. Listar todos os artistas ordenados por nome
SELECT nome FROM Artista ORDER BY nome;

-- 17. Contar quantas músicas existem no banco de dados
SELECT COUNT(*) AS total_musicas FROM Musica;

-- 18. Mostrar os 5 álbuns mais recentes
SELECT titulo, ano FROM Album ORDER BY ano DESC LIMIT 5;

-- 19. Listar músicas com duração superior a 5 minutos
SELECT musica, duracao FROM Musica WHERE duracao > '00:05:00';


-- 20. Mostrar artistas que não têm gênero definido
SELECT nome FROM Artista WHERE fkid_genero IS NULL;

-- 21. Listar playlists em ordem alfabética
SELECT playlist FROM Playlist ORDER BY playlist;

-- 22. Mostrar quantos gêneros musicais diferentes existem:
SELECT COUNT(*) AS total_generos FROM Genero;

-- 23. Listar músicas que começam com a letra 'A'
SELECT musica FROM Musica WHERE musica LIKE 'A%';

-- 24. Mostrar o álbum mais antigo no banco de dados
SELECT titulo, ano FROM Album ORDER BY ano ASC LIMIT 1;

-- 25. Listar compositores ordenados por sobrenome
SELECT compositor, sobrenome FROM Compositor ORDER BY sobrenome;

-- 26. Mostrar músicas com exatamente 3 minutos de duração
SELECT musica FROM Musica WHERE duracao = '00:03:00';

-- 27. Listar artistas que têm a letra 'a' no nome
SELECT nome FROM Artista WHERE nome LIKE '%a%';

-- 28. Mostrar a média de lançamento dos álbuns
SELECT AVG(ano) AS media_ano FROM Album;

-- 29. Listar músicas ordenadas por duração (da mais longa para a mais curta)
SELECT musica, duracao FROM Musica ORDER BY duracao DESC;

-- 30. Mostrar quantas músicas existem em cada playlist
SELECT p.playlist, COUNT(mp.fkid_musica) AS total_musicas
FROM Playlist p, musica_playlist mp
WHERE p.IdPlaylist = mp.fkid_playlist
GROUP BY p.playlist;