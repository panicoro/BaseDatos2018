-- -------------------------------------------------------
-- TEST CASE: Successful calculation of the percentage
-- of each star for the content with id = 2.

-- DESCRIPTION: Some reviews are deleted to those incorporated
-- in test-1 of consult-f.
-- -------------------------------------------------------

-- INPUT DATA SET

-- Delete review of client 3
DELETE FROM
  reviews
WHERE
  id_client = 3
  AND id_content = 2;

-- Delete review of client 2
DELETE FROM
  reviews
WHERE
  id_client = 2
  AND id_content = 2;

-- EXPECTED DATA SET

-- qualification
-- percentage

-- qualification
-- percentage

-- 5
-- 33.3333

-- 4
-- 33.3333

-- 2
-- 33.3333





