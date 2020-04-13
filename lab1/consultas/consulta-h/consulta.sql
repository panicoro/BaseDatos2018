-- CONSULT H
-- List the best rated movies in the last 6 months. Use the
-- "average mark".

SELECT
  content.id_content,
  content.title,
  avg(qualification) AS promedy
FROM
  reviews
  INNER JOIN movie ON reviews.id_content = movie.id_movie
  INNER JOIN content ON movie.id_movie = content.id_content
WHERE
  reviews.date > DATE_SUB(now(), INTERVAL 6 MONTH)
GROUP BY
  reviews.id_content
ORDER BY
  promedy DESC, title ASC;
