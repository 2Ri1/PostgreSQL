CREATE TABLE IF NOT EXISTS Music_genre(
 music_genre_id SERIAL PRIMARY KEY,
 genre_title VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer(
 singer_id SERIAL PRIMARY KEY,
 singer_name  VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer_genre(
 singer_genre_id SERIAL PRIMARY KEY,
 music_genre_id SERIAL NOT NULL REFERENCES Music_genre(music_genre_id),
 singer_id SERIAL NOT NULL REFERENCES Singer(singer_id)
);


CREATE TABLE IF NOT EXISTS Album(
 album_id SERIAL PRIMARY KEY,
 album_title VARCHAR(30) NOT NULL,
        album_year date NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer_album(
 singer_album_id SERIAL PRIMARY KEY,
 singer_id SERIAL NOT NULL REFERENCES Singer(singer_id),
 album_id SERIAL NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Song(
 song_id SERIAL PRIMARY KEY,
        album_id SERIAL NOT NULL REFERENCES Album(album_id),
 song_title VARCHAR(30) NOT NULL,
        song_length INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS Compilation(
 compilation_id SERIAL PRIMARY KEY,
        compilation_title VARCHAR(30) NOT NULL,
 compilation_year date NOT NULL
);

CREATE TABLE IF NOT EXISTS Song_compilation(
 song_compilation_id SERIAL PRIMARY KEY,
        compilation_id SERIAL NOT NULL REFERENCES Compilation(compilation_id),
 song_id SERIAL NOT NULL REFERENCES Song(song_id)
)
