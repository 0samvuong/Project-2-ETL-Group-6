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
 	director_id INT PRIMARY KEY,
	director_name TEXT NOT NULL
);

CREATE TABLE oscar_categories (
 	category_name TEXT PRIMARY KEY
);

CREATE TABLE genres (
 	genre TEXT PRIMARY KEY
);

-- CREATE tables - MAIN

CREATE TABLE movies (
 	movie_id INT PRIMARY KEY,
	movie_title TEXT NOT NULL,
	imdb_score float,
	meta_score float,
	runtime int,
	release_year int,
	gross int			
);

-- CREATE tables MID


CREATE TABLE movie_genres (
	movie_id INT REFERENCES movies (movie_id),
	genre TEXT REFERENCES genres (genre),
	PRIMARY KEY (movie_id,genre)
);

CREATE TABLE oscar_winners (
	movie_id INT REFERENCES movies (movie_id),
	category TEXT REFERENCES oscar_categories (category_name),
	PRIMARY KEY (movie_id,category)
);

CREATE TABLE directed_by (
	movie_id int REFERENCES movies (movie_id),
	director_id int REFERENCES directors (director_id),
	PRIMARY KEY (movie_id,director_id)
);





