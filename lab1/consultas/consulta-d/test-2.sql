-- ---------------------------------------------------------
--  TEST CASE: Unsuccessful list of reviews made by
-- a customer with id = 4 within a range
-- ['2018-08-1','2018-08-4'] of dates.

-- DESCRIPTION: reviews of customer with id = 4 and
-- desired date are deleted.
-- So there no reviews that meet the condition.
-- --------------------------------------------------------

-- INPUT DATA SET

DELETE FROM
  reviews
WHERE
  id_client = 4
  AND date BETWEEN '2018-08-2'
  AND '2018-08-4';

-- EXPECTED DATASET

-- id_reviews
-- id_client
-- id_content
-- title
-- date
-- qualification
