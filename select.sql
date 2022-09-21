-- количество исполнителей в каждом жанре
SELECT name_genres, COUNT(musicians_id) FROM genres
	JOIN musicians_to_genres USING(genres_id)
	GROUP BY name_genres;

-- количество треков, вошедших в альбомы 2019-2020 годов
SELECT albums_name, release_year, COUNT(track_name) FROM albums
	JOIN track USING(albums_id)
	WHERE release_year BETWEEN '2019-01-01' AND '2020-12-31'
	GROUP BY albums_name, release_year;

-- средняя продолжительность треков по каждому альбому
SELECT albums_name,  AVG(track_duration) AS avg_duration FROM albums
	JOIN track USING(albums_id)
	GROUP BY albums_name;

-- все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT name_musicians FROM musicians
	JOIN albums_to_musicians USING(musicians_id)
	JOIN albums AS a USING(albums_id)
	WHERE musicians_id NOT IN (SELECT musicians_id FROM albums_to_musicians
	JOIN albums USING(albums_id)
	WHERE TO_CHAR(albums.release_year, 'YYYY') LIKE '%2020%');

-- названия сборников, в которых присутствует конкретный исполнитель
SELECT name_musicians, mix_tape_name FROM mix_tape
	JOIN mix_tape_to_track USING(mix_tape_id)
	JOIN track USING(track_id)
	JOIN albums_to_musicians USING(albums_id)
	JOIN musicians USING(musicians_id)
	WHERE name_musicians LIKE 'Pink Floyd';

-- название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT albums_name, name_musicians, COUNT(genres_id) FROM albums
	JOIN albums_to_musicians USING(albums_id)
	JOIN musicians_to_genres USING (musicians_id)
	JOIN musicians USING(musicians_id)
	JOIN genres USING(genres_id)
	GROUP BY albums_name, name_musicians
	HAVING COUNT(genres_id) > 1;

-- наименование треков, которые не входят в сборники
SELECT track_name FROM track
	LEFT JOIN mix_tape_to_track USING(track_id)
	WHERE mix_tape_to_track.track_id IS NULL
	GROUP BY track_name;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек 
-- (теоретически таких треков может быть несколько)
SELECT name_musicians, track_duration FROM track
	JOIN albums_to_musicians USING(albums_id)
	JOIN musicians USING(musicians_id)
 	WHERE track_duration = (SELECT MIN(track_duration) FROM track)
	GROUP BY name_musicians, track_duration;


-- название альбомов, содержащих наименьшее количество треков
SELECT albums_name, COUNT(track_name) FROM albums
	INNER JOIN track USING(albums_id)
	GROUP BY albums_name 
	HAVING COUNT(track_name) = (SELECT COUNT(track_name) FROM albums
		INNER JOIN track USING(albums_id)
		GROUP BY albums_name
		ORDER by COUNT(track_name) LIMIT 1);
