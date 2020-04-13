-- PROCEDURE C
-- The stored procedure "calculate rating metrics" receives as
-- input parameters the identifier of a movie. The procedure must
-- get the percentages of ratings for each star, rating
-- average and quantity of criticisms received.

DELIMITER //
CREATE PROCEDURE calculate_rating_metrics(IN id_movie INT)
  BEGIN
    DECLARE
      average_rating,
      count_reviews,
      nreviews,
      star_1,
      star_2,
      star_3,
      star_4,
      star_5 INT DEFAULT 0;
SELECT
  movie.average_rating
FROM
  movie
WHERE
  movie.id_movie = id_movie INTO average_rating;
SELECT
  COUNT(id_reviews)
FROM
  reviews
  INNER JOIN movie ON movie.id_movie = reviews.id_content
WHERE
  reviews.id_content = id_movie INTO count_reviews;
SELECT
  COUNT(*)
FROM
  reviews
WHERE
  id_movie = reviews.id_content INTO nreviews;
SELECT
  (
    COUNT(id_reviews)* 100
  )/ nreviews
FROM
  reviews
WHERE
  reviews.id_content = id_movie
  and reviews.qualification = '1' INTO star_1;
SELECT
  (
    COUNT(id_reviews)* 100
  )/ nreviews
FROM
  reviews
WHERE
  reviews.id_content = id_movie
  and reviews.qualification = '2' INTO star_2;
SELECT
  (
    COUNT(id_reviews)* 100
  )/ nreviews
FROM
  reviews
WHERE
  reviews.id_content = id_movie
  and reviews.qualification = '3' INTO star_3;
SELECT
  (
    COUNT(id_reviews)* 100
  )/ nreviews
FROM
  reviews
WHERE
  reviews.id_content = id_movie
  and reviews.qualification = '4' INTO star_4;
SELECT
  (
    COUNT(id_reviews)* 100
  )/ nreviews
FROM
  reviews
WHERE
  reviews.id_content = id_movie
  and reviews.qualification = '5' INTO star_5;
SELECT
  CONCAT(count_reviews) AS count_reviews,
  CONCAT(average_rating) as average_rating,
  CONCAT(star_1) as star_1,
  CONCAT(star_2) as star_2,
  CONCAT(star_3) as star_3,
  CONCAT(star_4) as star_4,
  CONCAT(star_5) as star_5;
END;
// DELIMITER ;