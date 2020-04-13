-- CONSULT B:
-- List the data of the movies where actor 'Leonardo Dicaprio'  was the
-- protagonist.

SELECT
  content.*,
  movie.release_day,
  movie.duration
FROM
  content_worker
  INNER JOIN role_worker ON content_worker.id_worker = role_worker.id_worker
  AND role_worker.role = 'Protagonista'
  INNER JOIN content ON content.id_content = role_worker.id_content
  INNER JOIN movie ON movie.id_movie = content.id_content
WHERE
  'Leonardo' = content_worker.name
  AND 'Dicaprio' = content_worker.lastname;
