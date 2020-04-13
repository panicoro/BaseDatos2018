-- CONSULT F
-- Given the movie with id = 2, calculate for each star the percentage of
-- ratings received in their reviews.

-- Scalar Subquery

SELECT
  reviews.qualification,
  count(*)* 100 /(
    SELECT
      COUNT(*)
    FROM
      reviews
    WHERE
      2 = reviews.id_content
  ) AS percentage
FROM
  reviews
WHERE
  2 = reviews.id_content
GROUP BY
  qualification;
