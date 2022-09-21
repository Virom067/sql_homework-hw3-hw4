INSERT INTO musicians (name_musicians)
VALUES 
	('Pink Floyd'),
	('Billy Idol'),
	('The Prodigy'),
	('Moby'),
	('Ozzy Osbourne'),
	('Chuck Berry'),
	('Arctic Monkeys'),
	('The Chemical Brothers')
;

INSERT INTO genres (name_genres)
VALUES
	('Rock'),
	('Breakbeat'),
	('Techno'),
	('Heavy Metal'),
	('Rock and Roll'),
	('Electronic'),
	('Pop music')
;

INSERT INTO albums (albums_name, release_year)
VALUES 
	('The Dark Side of the moon', '1972-03-10'),
	('The Roadside', '2021-09-17'),
	('The Fat of the Land', '1997-06-30'),
	('Play', '1999-05-17'),
	('Black Rain', '2007-05-22'),
	('The Chess Box', '1988-01-01'),
	('Tranquility Base Hotel & Casino', '2018-05-11'),
	('All Visible Objects', '2020-05-15'),
	('No Geography', '2019-04-12')
;

INSERT INTO track(track_name, track_duration , albums_id)
VALUES 
-- Pink Floyd
	('Speak To Me', '00:01:05', 2),
	('Breathe (In The Air)', '00:02:49', 2),
	('On The Run', '00:03:45', 2),
	('Time', '00:06:45', 2),
	('The Great Gig In The Sky', '00:04:43', 2),
	('Money', '00:06:22', 2),
	('Us And Them', '00:07:49', 2),
	('Any Colour You Like', '00:03:26', 2),
	('Brain Damage', '00:03:46', 2),
	('Eclipse', '00:02:10', 2),
-- Billy Idol
	('Rita Hayworth', '00:03:05', 3),
	('Bitter Taste', '00:04:027', 3),
	('U Don''t Have To Kiss Me Like That', '00:04:34', 3),
	('Baby Put Your Clothes Back On', '00:03:53', 3),
-- The Prodigy
	('Smack My Bitch Up', '00:05:43', 4),
	('Breathe', '00:05:34', 4),
	('Diesel Power', '00:04:17', 4),
	('Funky Shit', '00:05:16', 4),
	('Serial Thrilla', '00:05:11', 4),
	('Mindfields', '00:05:40', 4),
	('Narayan', '00:09:05', 4),
	('Firestarter', '00:04:39', 4),
	('Climbatize', '00:06:38', 4),
	('Fuel My Fire', '00:04:18', 4),
-- Moby
	('Honey', '00:03:28', 5),
	('Find My Baby', '00:03:59', 5),
	('Porcelain', '00:03:58', 5),
	('Why Does My Heart Feel so Bad?', '00:04:23', 5),
	('South Side', '00:03:49', 5),
	('Rushing', '00:03:00', 5),
	('Bodyrock', '00:03:36', 5),
	('Natural Blues', '00:04:13', 5),
	('Machete', '00:03:37', 5),
	('7', '00:01:02', 5),
	('Run On', '00:03:45', 5),
	('Down Slow', '00:01:34', 5),
	('If Things Were Perfect', '00:04:18', 5),
	('Everloving', '00:03:25', 5),
	('Inside', '00:04:48', 5),
	('Guitar Flute & String', '00:02:09', 5),
	('The Sky Is Broken', '00:04:18', 5),
	('My Weakness', '00:03:37', 5),
-- Ozzy Osbourne
	('Not Going Away', '00:04:32', 6),
	('I Don''t Wanna Stop', '00:03:59', 6),
	('Countdown''s Begun', '00:04:53', 6),
-- Chuck Berry
	('Johnny B. Goode', '00:02:39', 7),
-- Arctic Monkeys
	('One Point Perspective', '00:03:29', 8),
-- Moby
	('Morningside', '00:05:31', 9),
	('My Only Love', '00:05:44', 9),
	('Refuge', '00:05:44', 9),
	('One Last Time', '00:05:33', 9),
	('Power Is Taken', '00:05:47', 9),
	('Rise Up In Love', '00:05:47', 9),
	('Forever', '00:05:17', 9),
	('Too Much Change', '00:09:46', 9),
	('Separation', '00:06:41', 9),
	('Tecie', '00:07:32', 9),
	('All Visible Objects', '00:09:17', 9),
-- The Chemical Brothers
	('Eve Of Destruction', '00:04:40', 10),
	('Bango', '00:04:06', 10),
	('No Geography', '00:03:10', 10),
	('Got To Keep On', '00:05:16', 10),
	('Gravity Drops', '00:04:30', 10),
	('The Universe Sent Me', '00:06:03', 10),
	('We''ve Got To Try', '00:03:35', 10),
	('Free Yourself', '00:04:21', 10),
	('MAH', '00:05:35', 10),
	('Catch Me I''m Falling', '00:05:28', 10)
;

INSERT INTO albums_to_musicians (musicians_id, albums_id)
VALUES
	(1, 2),
	(2, 3),
	(3, 4),
	(4, 5),
	(5, 6),
	(6, 7),
	(7, 8),
	(4, 9),
	(8, 10)
;

INSERT INTO musicians_to_genres (genres_id, musicians_id)
VALUES 
	(2, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(2, 7),
	(7, 8),
	(8, 4)
;

INSERT INTO mix_tape (mix_tape_name, release_year)
VALUES
	('A Foot In the Door: The Best of Pink Floyd', '2011-07-11'),
	('Billy Idol: Hits', '2022-01-01'),
	('The Prodigy: Hits', '2019-06-06')
	('Moby: Hits', '2005-05-05')
	('Ozzy Osbourne: Hits', '2022-01-01'),
	('Chuck Berry: Hits', '2019-08-01'),
	('Arctic Monkeys: Hits', '2000-01-30'),
	('The Chemical Brothers: Hits', '2020-01-25')
;

INSERT INTO mix_tape_to_track (mix_tape_id, track_id)
VALUES 
	(1, 11),
	(2, 13),
	(3, 16),
	(5, 43),
	(6, 45),
	(7, 47),
	(8, 48),
	(5, 59),
	(9, 69)
;
