-- drop table statements
DROP TABLE directors;
DROP TABLE oscar_categories;
DROP TABLE genres;

DROP TABLE movie_genres;
DROP TABLE oscar_winners;
DROP TABLE directed_by;

DROP TABLE movies;


-- Create tables OUTER

CREATE TABLE directors (
 	director_id int PRIMARY KEY,
	director_name TEXT NOT NULL
);

CREATE TABLE oscar_categories (
 	category_name TEXT PRIMARY KEY
);

CREATE TABLE genres (
 	genre_name TEXT PRIMARY KEY
);

-- CREATE tables MID


CREATE TABLE movie_genres (
 	genre_id INT PRIMARY KEY,
	movie_id INT NOT NULL,
	genre TEXT
);

CREATE TABLE oscar_winners (
 	winner_id INT PRIMARY KEY,
	movie_id TEXT NOT NULL,
	category TEXT NOT NULL
);

CREATE TABLE directed_by (
	movie_id int NOT NULL,
	director_id int NOT NULL
);


-- CREATE tables - MAIN

CREATE TABLE movies (
 	movie_id INT PRIMARY KEY,
	movie_title TEXT NOT NULL,
	IMDB_score float,
	meta_score float,
	run_time int,
	year int,
	gross int			
);


