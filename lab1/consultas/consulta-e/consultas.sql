-- CONSULT E:
-- List the actors who have acted in films that belong to genres
-- of drama or comedy, arranged in alphabetical order.

WITH actorDC AS (
  SELECT
    role_worker.id_worker
  FROM
    role_worker
    INNER JOIN movie ON movie.id_movie = role_worker.id_content
    INNER JOIN content_kind ON content_kind.id_kind = role_worker.id_content
    AND (
      'Comedia' = content_kind.kind
      OR 'Drama' = content_kind.kind
    )
  WHERE
    role_worker.role = 'Protagonista'
    OR role_worker.role = 'Secundario'
)
SELECT
  content_worker.lastname,
  content_worker.name
FROM
  content_worker
  INNER JOIN actorDC ON content_worker.id_worker = actorDC.id_worker
ORDER BY
  content_worker.lastname ASC;
