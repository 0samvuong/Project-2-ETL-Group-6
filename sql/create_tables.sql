-- drop table statements
DROP TABLE movie_genres;
DROP TABLE oscar_winners;
DROP TABLE directed_by;

DROP TABLE directors;
DROP TABLE oscar_categories;
DROP TABLE genres;



DROP TABLE movies;


-- Create tables OUTER

CREATE TABLE directors (
 	director_id SERIAL PRIMARY KEY,
	director_name TEXT NOT NULL
);

CREATE TABLE oscar_categories (
 	category_name TEXT PRIMARY KEY
);

CREATE TABLE genres (
 	genre_name TEXT PRIMARY KEY
);

-- CREATE tables - MAIN

CREATE TABLE movies (
 	movie_id SERIAL PRIMARY KEY,
	movie_title TEXT NOT NULL,
	imdb_score float,
	meta_score float,
	run_time int,
	year int,
	gross int			
);

-- CREATE tables MID


CREATE TABLE movie_genres (
 	genre_id SERIAL PRIMARY KEY,
	movie_id INT REFERENCES movies (movie_id),
	genre TEXT REFERENCES genres (genre_name)
);

CREATE TABLE oscar_winners (
 	winner_id SERIAL PRIMARY KEY,
	movie_id INT REFERENCES movies (movie_id),
	category TEXT REFERENCES oscar_categories (category_name)
);

CREATE TABLE directed_by (
	movie_id int NOT NULL,
	director_id int REFERENCES directors (director_id)
);





