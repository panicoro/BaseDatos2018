-- List the actors who have acted in all television programs in
-- where an actor with id = 10 performed.

WITH program_actor AS (
  SELECT
    role_worker.id_content
  FROM
    role_worker
    INNER JOIN program ON program.id_program = role_worker.id_content
  WHERE
    10 = role_worker.id_worker
)
SELECT
  DISTINCT role_worker.id_worker,
  content_worker.lastname,
  content_worker.name
FROM
  content_worker,
  role_worker
  INNER JOIN program_actor ON program_actor.id_content = role_worker.id_content
WHERE
  content_worker.id_worker = role_worker.id_worker
  AND NOT role_worker.id_worker = 10
  AND NOT role_worker.role = 'Director';
