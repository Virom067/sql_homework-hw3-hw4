CREATE TABLE musicians(
    musicians_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name_musicians VARCHAR(50) NOT NULL
   );

CREATE TABLE genres(
    genres_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name_genres VARCHAR(50) NOT NULL
   );

CREATE TABLE musicians_to_genres(
    musicians_to_genres_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    musicians_id INTEGER NOT NULL,
    genres_id INTEGER NOT NULL,
    FOREIGN KEY (musicians_id) REFERENCES musicians(musicians_id),
    FOREIGN KEY (genres_id) REFERENCES genres(genres_id)
   );

CREATE TABLE albums(
    albums_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    albums_name VARCHAR(50) UNIQUE NOT NULL,
    release_year DATE
   );

CREATE TABLE albums_to_musicians(
    albums_to_musicians_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    albums_id INTEGER NOT NULL,
    musicians_id INTEGER NOT NULL,
    FOREIGN KEY (albums_id) REFERENCES albums(albums_id),
    FOREIGN KEY (musicians_id) REFERENCES musicians(musicians_id)
   );

CREATE TABLE track(
    track_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    track_name VARCHAR(50) UNIQUE NOT NULL,
    track_duration TIME NOT NULL,
    albums_id INTEGER,
    FOREIGN KEY (albums_id) REFERENCES albums(albums_id)
   );

CREATE TABLE mix_tape(
    mix_tape_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    mix_tape_name VARCHAR(50) NOT NULL,
    release_year DATE
   );

CREATE TABLE mix_tape_to_track(
    mix_tape_to_track_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    mix_tape_id INTEGER NOT NULL,
    track_id INTEGER NOT NULL,
    FOREIGN KEY (mix_tape_id) REFERENCES mix_tape(mix_tape_id),
    FOREIGN KEY (track_id) REFERENCES track(track_id)
    );
