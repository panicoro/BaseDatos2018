-- PROCUDERE D
-- The "recently viewed" stored procedure receives as parameters
-- input the user s identifier and a product type (movie or
-- television program). The procedure must obtain a list of the data of the products
-- with genres that the user saw and that were seen by other users in the last week.

DELIMITER // CREATE PROCEDURE recently_review (
  IN client_id INT,
  IN type_content ENUM('Pelicula', 'Programa')
) BEGIN
SELECT
  *
FROM
  (
    SELECT
      reviews.id_content,
      content_kind.kind
    FROM
      reviews
      INNER JOIN content ON content.id_content = reviews.id_content
      INNER JOIN content_kind ON content_kind.id_kind = reviews.id_content
    WHERE
      content.type = type_content
      AND reviews.date BETWEEN subdate(
        curdate(),
        INTERVAL 1 WEEK
      )
      and curdate()
      AND content_kind.kind IN (
        SELECT
          content_kind.kind
        FROM
          reviews
          INNER JOIN content ON content.id_content = reviews.id_content
          INNER JOIN content_kind ON content_kind.id_kind = reviews.id_content
        WHERE
          content.type = type_content
          AND reviews.date BETWEEN subdate(
            curdate(),
            INTERVAL 1 WEEK
          )
          and curdate()
          AND reviews.id_client = client_id
      )
  ) AS reviews_lastweek NATURAL
  JOIN content;
END; //
DELIMITER ;