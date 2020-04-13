-- CONSULT I:
-- List films directed by two or more female directors.

WITH content_countD AS (
  SELECT
    role_worker.id_content,
    count(role_worker.id_worker) AS countDirectorF
  FROM
    role_worker
    INNER JOIN movie ON movie.id_movie = role_worker.id_content
    INNER JOIN content_worker ON role_worker.id_worker = content_worker.id_worker
  where
    'Director' = role_worker.role
    AND 'Femenino' = content_worker.sex
  group by
    role_worker.id_content
)
SELECT
  content.id_content, content.title
FROM
  content
  INNER JOIN content_countD ON content_countD.id_content = content.id_content
WHERE
  content_countD.countDirectorF >= 2;