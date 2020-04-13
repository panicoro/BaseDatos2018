-- -------------------------------------------------------
-- TEST CASE: Unsuccessful list premium clients with
-- subscription date 2009-1-6 .

-- DESCRIPTION: 2 premium customers
-- with the desired date are delete so after consultation
-- nothing is given.
-- --------------------------------------------------------

-- INPUT DATA SET

DELETE FROM
  client
WHERE
  id_client = 4;
DELETE FROM
  client
WHERE
  id_client = 2;

-- EXPECTED DATA_SET

-- id_client
-- name
-- last_name
-- mail
-- password
-- telephone
-- nick
-- sex
-- birth_date
-- type_subscription
-- date_subscription


