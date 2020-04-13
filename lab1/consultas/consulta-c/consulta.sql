-- CONSULT C:
-- List the episodes corresponding to a television program X
-- and a season number N. List by date of release.

SELECT
  episode.title
FROM
  content
  INNER JOIN episode ON content.id_content = episode.id_program
WHERE
  'The black mirror' = content.title
  and 4 = episode.nseason
ORDER BY
  episode.release_date ASC;