-- -------------------------------------------------------
-- TEST CASE: Unsuccessful calculation of the average rating
-- of a movie with id = 3.

-- DESCRIPTION: Reviews about id_content = 3 are deleted.
-- So nothing can be calculate and return null.
-- -------------------------------------------------------

-- INPUT DATA SET

DELETE FROM
    reviews
  WHERE
    id_content = 3;

-- EXPECTED DATA SET

-- average_rating
-- null




