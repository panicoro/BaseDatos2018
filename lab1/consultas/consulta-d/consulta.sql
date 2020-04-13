-- CONSULT D
-- List the reviews made by a customer with id = 4 within a range
-- ['2018-08-1','2018-08-4'] of dates.

SELECT
  reviews.*
FROM
  reviews
WHERE
  4 = reviews.id_client
  AND reviews.date BETWEEN
   '2018-08-2' AND '2018-08-4';

