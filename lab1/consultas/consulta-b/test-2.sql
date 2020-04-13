-- ---------------------------------------------------------
--  TEST CASE: Unsuccessful list with of movies with Leonardo
--  Dicaprio as protagonist.

--  DESCRIPTION: The films starring Leonardo Dicaprio were
-- eliminated.
-- ---------------------------------------------------------

-- INPUT DATA SET

DELETE FROM
  content
WHERE
  id_content = 1;
DELETE FROM
  content
WHERE
  id_content = 3;
DELETE FROM
  content
WHERE
  id_content = 4;

-- EXPECTED DATA SET

-- id_content
-- title
-- description
-- producer
-- release_day
-- duration

