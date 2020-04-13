-- CONSULT G
-- Given a movie with id = 3, calculate its "average rating".
-- To calculate the  average rating in terms of 5 stars using
-- the weighted average as described in http://goo.gl/YXYVak

SELECT
  avg(qualification) AS avarage_raiting
FROM
  reviews
WHERE
  reviews.id_content = 3;


