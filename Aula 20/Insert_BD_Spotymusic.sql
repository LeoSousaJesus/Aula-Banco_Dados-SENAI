/*
	INSERT'S para cada tabela
*/

-- INSERT'S para a tabela Genero
INSERT INTO Genero (genero) VALUES 
('Rock'), ('Pop'), ('Hip Hop'), ('Eletrônica'), ('Jazz'),
('Blues'), ('Country'), ('R&B'), ('Reggae'), ('Funk');

-- INSERT'S para a tabela Compositor
INSERT INTO Compositor (compositor, sobrenome) VALUES 
('John', 'Lennon'), ('Paul', 'McCartney'), ('Michael', 'Jackson'),
('Kendrick', 'Duckworth'), ('Thomas', 'Bangalter'), ('Guy-Manuel', 'Homem-Christo'),
('Miles', 'Davis'), ('Riley', 'King'), ('Johnny', 'Cash'), ('Bob', 'Marley');

-- INSERT'S para a tabela Artista 
INSERT INTO Artista (nome, fkid_genero) VALUES 
('The Beatles', 1), ('Michael Jackson', 2), ('Kendrick Lamar', 3),
('Daft Punk', 4), ('Miles Davis', 5), ('B.B. King', 6),
('Johnny Cash', 7), ('Beyoncé', 8), ('Bob Marley', 9), ('James Brown', 10);


-- INSERT'S para a tabela Album para cada artista

-- 1. The Beatles (Rock)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('Abbey Road', 1969, 1),
('Sgt. Pepper''s Lonely Hearts Club Band', 1967, 1);

-- 2. Michael Jackson (Pop)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('Thriller', 1982, 2),
('Bad', 1987, 2);

-- 3. Kendrick Lamar (Hip Hop)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('DAMN.', 2017, 3),
('To Pimp a Butterfly', 2015, 3);

-- 4. Daft Punk (Eletrônica)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('Random Access Memories', 2013, 4),
('Discovery', 2001, 4);

-- 5. Miles Davis (Jazz)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('Kind of Blue', 1959, 5),
('Bitches Brew', 1970, 5);

-- 6. B.B. King (Blues)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('Live at the Regal', 1965, 6),
('Lucille', 1968, 6);

-- 7. Johnny Cash (Country)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('At Folsom Prison', 1968, 7),
('American IV: The Man Comes Around', 2002, 7);

-- 8. Beyoncé (R&B)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('Lemonade', 2016, 8),
('Beyoncé', 2013, 8);

-- 9. Bob Marley (Reggae)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('Exodus', 1977, 9),
('Legend', 1984, 9);

-- 10. James Brown (Funk)
INSERT INTO Album (titulo, ano, fkid_artista) VALUES 
('Live at the Apollo', 1963, 10),
('Sex Machine', 1970, 10);


-- Insert para a tabela Musica de acordo com cada álbum

-- Abbey Road (The Beatles)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Come Together', '00:04:20', 1, 1, 1), ('Something', '00:03:03', 2, 1, 1),
('Maxwell''s Silver Hammer', '00:03:27', 2, 1, 1), ('Oh! Darling', '00:03:26', 2, 1, 1),
('Octopus''s Garden', '00:02:51', 2, 1, 1), ('I Want You (She''s So Heavy)', '00:07:47', 1, 1, 1),
('Here Comes the Sun', '00:03:05', 2, 1, 1), ('Because', '00:02:45', 1, 1, 1),
('You Never Give Me Your Money', '00:04:02', 2, 1, 1), ('Sun King', '00:02:26', 2, 1, 1);

-- Sgt. Pepper''s Lonely Hearts Club Band (The Beatles)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Sgt. Pepper''s Lonely Hearts Club Band', '00:02:02', 1, 1, 2),
('With a Little Help from My Friends', '00:02:44', 1, 1, 2),
('Lucy in the Sky with Diamonds', '00:03:28', 1, 1, 2),
('Getting Better', '00:02:48', 1, 1, 2),
('Fixing a Hole', '00:02:36', 2, 1, 2),
('She''s Leaving Home', '00:03:35', 2, 1, 2),
('Being for the Benefit of Mr. Kite!', '00:02:37', 1, 1, 2),
('Within You Without You', '00:05:04', 2, 1, 2),
('When I''m Sixty-Four', '00:02:37', 2, 1, 2),
('A Day in the Life', '00:05:33', 1, 1, 2);

-- Thriller (Michael Jackson)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Wanna Be Startin'' Somethin''', '00:06:03', 3, 2, 3), ('Baby Be Mine', '00:04:20', 3, 2, 3),
('The Girl Is Mine', '00:03:42', 3, 2, 3), ('Thriller', '00:05:57', 3, 2, 3),
('Beat It', '00:04:18', 3, 2, 3), ('Billie Jean', '00:04:54', 3, 2, 3),
('Human Nature', '00:04:06', 3, 2, 3), ('P.Y.T. (Pretty Young Thing)', '00:03:58', 3, 2, 3),
('The Lady in My Life', '00:04:59', 3, 2, 3), ('Starlight', '00:03:45', 3, 2, 3);


-- Bad (Michael Jackson)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Bad', '00:04:07', 3, 2, 4),
('The Way You Make Me Feel', '00:04:58', 3, 2, 4),
('Speed Demon', '00:04:01', 3, 2, 4),
('Liberian Girl', '00:03:53', 3, 2, 4),
('Just Good Friends', '00:04:06', 3, 2, 4),
('Another Part of Me', '00:03:54', 3, 2, 4),
('Man in the Mirror', '00:05:19', 3, 2, 4),
('I Just Can''t Stop Loving You', '00:4:25', 3, 2, 4),
('Dirty Diana', '00:4:52', 3, 2, 4),
('Smooth Criminal', '00:4:17', 3, 2, 4);


-- DAMN. (Kendrick Lamar)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('BLOOD.', '00:01:58', 4, 3, 5),
('DNA.', '00:03:05', 4, 3, 5),
('YAH.', '00:02:40', 4, 3, 5),
('ELEMENT.', '00:03:28', 4, 3, 5),
('FEEL.', '00:03:34', 4, 3, 5),
('LOYALTY.', '00:03:47', 4, 3, 5),
('PRIDE.', '00:04:35', 4, 3, 5),
('HUMBLE.', '00:02:57', 4, 3, 5),
('LUST.', '00:05:07', 4, 3, 5),
('LOVE.', '00:03:33', 4, 3, 5);

-- To Pimp a Butterfly (Kendrick Lamar)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Wesley''s Theory', '00:04:47', 4, 3, 6),
('For Free?', '00:02:10', 4, 3, 6),
('King Kunta', '00:03:54', 4, 3, 6),
('Institutionalized', '00:04:31', 4, 3, 6),
('These Walls', '00:05:00', 4, 3, 6),
('u', '00:04:28', 4, 3, 6),
('Alright', '00:03:39', 4, 3, 6),
('For Sale?', '00:04:51', 4, 3, 6),
('Momma', '00:04:43', 4, 3, 6),
('Hood Politics', '00:04:52', 4, 3, 6);

-- Random Access Memories (Daft Punk)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Give Life Back to Music', '00:04:35', 5, 4, 7),
('The Game of Love', '00:05:21', 5, 4, 7),
('Giorgio by Moroder', '00:09:04', 5, 4, 7),
('Within', '00:03:48', 5, 4, 7),
('Instant Crush', '00:05:37', 5, 4, 7),
('Lose Yourself to Dance', '00:05:53', 5, 4, 7),
('Touch', '00:08:18', 5, 4, 7),
('Get Lucky', '00:06:07', 5, 4, 7),
('Beyond', '00:04:50', 5, 4, 7),
('Motherboard', '00:05:41', 5, 4, 7);


-- Discovery (Daft Punk)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('One More Time', '00:05:20', 6, 4, 8),
('Aerodynamic', '00:03:27', 6, 4, 8),
('Digital Love', '00:04:58', 6, 4, 8),
('Harder, Better, Faster, Stronger', '00:03:44', 6, 4, 8),
('Crescendolls', '00:03:31', 6, 4, 8),
('Nightvision', '00:01:44', 6, 4, 8),
('Superheroes', '00:03:57', 6, 4, 8),
('High Life', '00:03:22', 6, 4, 8),
('Something About Us', '00:03:51', 6, 4, 8),
('Voyager', '00:03:47', 6, 4, 8);

-- Kind of Blue (Miles Davis)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('So What', '00:09:22', 7, 5, 9),
('Freddie Freeloader', '00:09:46', 7, 5, 9),
('Blue in Green', '00:05:37', 7, 5, 9),
('All Blues', '00:11:33', 7, 5, 9),
('Flamenco Sketches', '00:09:26', 7, 5, 9),
('Flamenco Sketches (Alternate Take)', '00:09:32', 7, 5, 9),
('So What (Live)', '00:17:28', 7, 5, 9),
('Blue in Green (Alternate Take)', '00:05:55', 7, 5, 9),
('All Blues (Live)', '00:16:26', 7, 5, 9),
('On Green Dolphin Street', '00:09:49', 7, 5, 9);

-- Bitches Brew (Miles Davis)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Pharaoh''s Dance', '00:20:00', 7, 5, 10),
('Bitches Brew', '00:26:59', 7, 5, 10),
('Spanish Key', '00:17:32', 7, 5, 10),
('John McLaughlin', '00:04:26', 7, 5, 10),
('Miles Runs the Voodoo Down', '00:14:04', 7, 5, 10),
('Sanctuary', '00:10:52', 7, 5, 10),
('Feio', '00:11:49', 7, 5, 10),
('Double Image', '00:08:30', 7, 5, 10),
('Recollections', '00:18:55', 7, 5, 10),
('Take It or Leave It', '00:07:24', 7, 5, 10);

-- Live at the Regal (B.B. King)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Every Day I Have the Blues', '00:02:38', 8, 6, 11),
('Sweet Little Angel', '00:04:20', 8, 6, 11),
('It''s My Own Fault', '00:03:29', 8, 6, 11),
('How Blue Can You Get', '00:03:44', 8, 6, 11),
('Please Love Me', '00:03:01', 8, 6, 11),
('You Upset Me Baby', '00:03:04', 8, 6, 11),
('Worry, Worry', '00:06:24', 8, 6, 11),
('Woke Up This Morning', '00:05:24', 8, 6, 11),
('You Done Lost Your Good Thing Now', '00:04:16', 8, 6, 11),
('Help the Poor', '00:03:16', 8, 6, 11);

-- Lucille (B.B. King)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Lucille', '00:10:16', 8, 6, 12),
('Stop Leadin'' Me On', '00:02:34', 8, 6, 12),
('My Own Fault', '00:03:31', 8, 6, 12),
('Bad Luck', '00:03:23', 8, 6, 12),
('Sweet Little Angel', '00:04:20', 8, 6, 12),
('Shoutin'' the Blues', '00:02:51', 8, 6, 12),
('I Need You So', '00:03:29', 8, 6, 12),
('Early in the Morning', '00:03:41', 8, 6, 12),
('The Jungle', '00:03:32', 8, 6, 12),
('Blues at Midnight', '00:04:08', 8, 6, 12);

-- At Folsom Prison (Johnny Cash)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Folsom Prison Blues', '00:02:42', 9, 7, 13),
('Dark as a Dungeon', '00:03:06', 9, 7, 13),
('I Still Miss Someone', '00:01:38', 9, 7, 13),
('Cocaine Blues', '00:03:01', 9, 7, 13),
('25 Minutes to Go', '00:03:31', 9, 7, 13),
('Orange Blossom Special', '00:03:06', 9, 7, 13),
('The Long Black Veil', '00:03:57', 9, 7, 13),
('Send a Picture of Mother', '00:02:10', 9, 7, 13),
('The Wall', '00:01:40', 9, 7, 13),
('Dirty Old Egg-Suckin'' Dog', '00:01:30', 9, 7, 13);

-- American IV (Johnny Cash)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('The Man Comes Around', '00:04:26', 9, 7, 14),
('Hurt', '00:03:38', 9, 7, 14),
('Give My Love to Rose', '00:03:28', 9, 7, 14),
('Bridge Over Troubled Water', '00:03:55', 9, 7, 14),
('I Hung My Head', '00:03:53', 9, 7, 14),
('First Time Ever I Saw Your Face', '00:03:42', 9, 7, 14),
('Personal Jesus', '00:03:20', 9, 7, 14),
('In My Life', '00:02:57', 9, 7, 14),
('Sam Hall', '00:2:40', 9, 7, 14),
('We''ll Meet Again', '00:02:58', 9, 7, 14);

-- Lemonade (Beyoncé)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Pray You Catch Me', '00:03:16', 8, 8, 15),
('Hold Up', '00:03:41', 8, 8, 15),
('Don''t Hurt Yourself', '00:03:54', 8, 8, 15),
('Sorry', '00:03:53', 8, 8, 15),
('6 Inch', '00:04:20', 8, 8, 15),
('Daddy Lessons', '00:04:48', 8, 8, 15),
('Love Drought', '00:03:57', 8, 8, 15),
('Sandcastles', '00:03:03', 8, 8, 15),
('Forward', '00:01:19', 8, 8, 15),
('Formation', '00:03:26', 8, 8, 15);

-- Beyoncé (Beyoncé)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Pretty Hurts', '00:04:17', 8, 8, 16),
('Haunted', '00:06:09', 8, 8, 16),
('Drunk in Love', '00:05:23', 8, 8, 16),
('Blow', '00:05:09', 8, 8, 16),
('No Angel', '00:03:48', 8, 8, 16),
('Partition', '00:05:19', 8, 8, 16),
('Jealous', '00:03:04', 8, 8, 16),
('Rocket', '00:06:31', 8, 8, 16),
('Mine', '00:06:18', 8, 8, 16),
('XO', '00:03:35', 8, 8, 16);

-- Exodus (Bob Marley)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Natural Mystic', '00:03:28', 10, 9, 17),
('So Much Things to Say', '00:03:08', 10, 9, 17),
('Guiltiness', '00:03:19', 10, 9, 17),
('The Heathen', '00:02:32', 10, 9, 17),
('Exodus', '00:07:40', 10, 9, 17),
('Jamming', '00:03:31', 10, 9, 17),
('Waiting in Vain', '00:04:16', 10, 9, 17),
('Turn Your Lights Down Low', '00:03:39', 10, 9, 17),
('Three Little Birds', '00:03:00', 10, 9, 17),
('One Love/People Get Ready', '00:02:52', 10, 9, 17);

-- Legend (Bob Marley)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Is This Love', '00:03:52', 10, 9, 18),
('No Woman, No Cry', '00:07:08', 10, 9, 18),
('Could You Be Loved', '00:03:57', 10, 9, 18),
('Three Little Birds', '00:03:00', 10, 9, 18),
('Buffalo Soldier', '00:04:15', 10, 9, 18),
('Get Up, Stand Up', '00:03:17', 10, 9, 18),
('Stir It Up', '00:05:30', 10, 9, 18),
('Easy Skanking', '00:02:57', 10, 9, 18),
('One Love/People Get Ready', '00:02:52', 10, 9, 18),
('I Shot the Sheriff', '00:04:40', 10, 9, 18);

-- Live at the Apollo (James Brown)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Introduction to James Brown', '00:00:56', 10, 10, 19),
('I''ll Go Crazy', '00:02:05', 10, 10, 19),
('Try Me', '00:02:27', 10, 10, 19),
('Think', '00:02:00', 10, 10, 19),
('I Don''t Mind', '00:02:28', 10, 10, 19),
('Lost Someone', '00:10:43', 10, 10, 19),
('Please, Please, Please', '00:06:46', 10, 10, 19),
('Night Train', '00:03:33', 10, 10, 19),
('Think (Reprise)', '00:01:50', 10, 10, 19),
('I Found Someone', '00:03:03', 10, 10, 19);

-- Sex Machine (James Brown)
INSERT INTO Musica (musica, duracao, fkid_compositor, fkid_genero, fkid_album) VALUES 
('Get Up (I Feel Like Being a) Sex Machine', '00:10:46', 10, 10, 20),
('Brother Rapp', '00:09:14', 10, 10, 20),
('Bewildered', '00:06:21', 10, 10, 20),
('I Got the Feelin''', '00:05:53', 10, 10, 20),
('Give It Up or Turnit a Loose', '00:07:36', 10, 10, 20),
('It''s a Man''s Man''s Man''s World', '00:05:33', 10, 10, 20),
('Please, Please, Please', '00:03:42', 10, 10, 20),
('Mother Popcorn', '00:08:18', 10, 10, 20),
('Super Bad', '00:05:50', 10, 10, 20),
('Soul Power', '00:07:27', 10, 10, 20);

-- INSERT'S para a tabela Playlist

INSERT INTO Playlist (playlist) VALUES
('Rock Classics'),
('Pop Hits'),
('Hip Hop Essencial'),
('Jazz & Blues'),
('Funk & Soul');


-- INSERT'S para a tabela Musica_Playlist

-- 1. Playlist Rock Classics
INSERT INTO musica_playlist (fkid_musica, fkid_playlist) VALUES 
(1, 1),   -- Come Together (Abbey Road)
(2, 1),   -- Something (Abbey Road)
(3, 1),   -- Maxwell's Silver Hammer (Abbey Road)
(11, 1),  -- Sgt. Pepper's Lonely Hearts Club Band
(12, 1),  -- With a Little Help from My Friends
(13, 1),  -- Lucy in the Sky with Diamonds
(14, 1),  -- Getting Better
(15, 1),  -- Fixing a Hole
(16, 1),  -- She's Leaving Home
(17, 1);  -- Being for the Benefit of Mr. Kite!

-- 2. Playlist Pop Hits
INSERT INTO musica_playlist (fkid_musica, fkid_playlist) VALUES 
(21, 2),   -- Wanna Be Startin' Somethin' (Thriller)
(22, 2),   -- Baby Be Mine (Thriller)
(25, 2),   -- Beat It (Thriller)
(26, 2),   -- Billie Jean (Thriller)
(31, 2),   -- Bad (Bad)
(32, 2),   -- The Way You Make Me Feel (Bad)
(151, 2),  -- Hold Up (Lemonade)
(152, 2),  -- Don't Hurt Yourself (Lemonade)
(153, 2),  -- Sorry (Lemonade)
(161, 2);  -- Drunk in Love (Beyoncé)

-- 3. Playlist Hip Hop Essencial
INSERT INTO musica_playlist (fkid_musica, fkid_playlist) VALUES 
(41, 3),   -- BLOOD. (DAMN.)
(42, 3),   -- DNA. (DAMN.)
(45, 3),   -- FEEL. (DAMN.)
(47, 3),   -- PRIDE. (DAMN.)
(48, 3),   -- HUMBLE. (DAMN.)
(51, 3),   -- Wesley's Theory (To Pimp a Butterfly)
(53, 3),   -- King Kunta (To Pimp a Butterfly)
(56, 3),   -- u (To Pimp a Butterfly)
(57, 3),   -- Alright (To Pimp a Butterfly)
(58, 3);   -- For Sale? (To Pimp a Butterfly)

-- 4. Playlist Jazz & Blues
INSERT INTO musica_playlist (fkid_musica, fkid_playlist) VALUES 
(71, 4),   -- So What (Kind of Blue)
(72, 4),   -- Freddie Freeloader (Kind of Blue)
(73, 4),   -- Blue in Green (Kind of Blue)
(81, 4),   -- Pharaoh's Dance (Bitches Brew)
(82, 4),   -- Bitches Brew (Bitches Brew)
(91, 4),   -- Every Day I Have the Blues (Live at the Regal)
(92, 4),   -- Sweet Little Angel (Live at the Regal)
(93, 4),   -- It's My Own Fault (Live at the Regal)
(101, 4),  -- Lucille (Lucille)
(102, 4);  -- Stop Leadin' Me On (Lucille)

-- 5. Playlist Funk & Soul
INSERT INTO musica_playlist (fkid_musica, fkid_playlist) VALUES 
(181, 5),  -- Get Up (I Feel Like Being a) Sex Machine
(184, 5),  -- I Got the Feelin'
(186, 5),  -- It's a Man's Man's Man's World
(189, 5),  -- Super Bad
(190, 5),  -- Soul Power
(171, 5),  -- Exodus (Bob Marley)
(172, 5),  -- So Much Things to Say (Bob Marley)
(176, 5),  -- Jamming (Bob Marley)
(26, 5),   -- Billie Jean (Michael Jackson - crossover)
(48, 5);   -- HUMBLE. (Kendrick Lamar - crossover)