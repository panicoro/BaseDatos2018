-- TRIGGER B
-- The "update average movie rating" trigger updates the
-- "Average rating" of a "movie" every time new ones are inserted
-- critics.

CREATE TRIGGER average_movie_rating
AFTER
  INSERT ON reviews FOR EACH ROW BEGIN
UPDATE
  movie
SET
  average_rating = (
    SELECT
      avg(qualification)
    FROM
      reviews
    WHERE
      reviews.id_content = NEW.id_content
  )
WHERE
  movie.id_movie = NEW.id_content;
END;