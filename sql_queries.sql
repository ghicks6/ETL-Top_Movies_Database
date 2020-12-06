CREATE TABLE rotten_tomatoes (
title TEXT,
year TEXT,
genres TEXT,
Rank TEXT,
RatingTomatometer INT,
No_of_Reviews INT
);

SELECT * FROM rotten_tomatoes

CREATE TABLE movie_lens (
movieId INT PRIMARY KEY,
title TEXT,
year TEXT,
movielens_rating INT,
genres TEXT
);

SELECT * FROM movie_lens

CREATE TABLE imdb (
title TEXT PRIMARY KEY,
year INT,
country TEXT,
duration INT,
imdb_Rating INT,
votes INT,
genre TEXT
);

SELECT * FROM imdb


-- Join tables on title
SELECT rotten_tomatoes.title, rotten_tomatoes.year, rotten_tomatoes.genres, rotten_tomatoes.RatingTomatometer, movie_lens.title,  movie_lens.movielens_rating	
FROM rotten_tomatoes
JOIN movie_lens
ON rotten_tomatoes.title = movie_lens.title;