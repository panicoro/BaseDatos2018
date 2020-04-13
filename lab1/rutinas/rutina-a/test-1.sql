-- ---------------------------------------------------------------
-- TEST CASE: Successful update subscription date

-- DESCRIPTION: Clients were added to the database and then
-- data from three of them was updated. Through updates to one,
-- the plan was changed to 'Premium', another was not and a
-- 'Premium' was re-entered a 'Premium' value. We want to see that
-- the one to whom the plan was changed the date varies from the date
-- on which the test is run, to which the plan was not changed and
-- to which it was 'Premium', its date remains the same.
-- ------------------------------------------------------------------

-- INPUT DATA SET

DELETE FROM episode;
DELETE FROM season;
DELETE FROM program;
DELETE FROM movie_subtitles;
DELETE FROM movie;
DELETE FROM reviews;
DELETE FROM consumed;
DELETE FROM content_kind;
DELETE FROM role_worker;
DELETE FROM content;
DELETE FROM content_worker;
DELETE FROM client;
DELETE FROM employee_telephone;
DELETE FROM employee_role;
DELETE FROM employee;

-- Add client
INSERT INTO client
VALUES
  (
    1, 'Juan', 'Perez', '1@mail.com', '1111',
    null, 'juanp', 'Masculino', '1990-12-1',
    'Basic', '2010-10-5'
  ),
  (
    2, 'Pedro', 'Peralta', '2@mail.com',
    '2222', null, 'peperal', 'Masculino', '1988-07-04',
    'Premium', '2009-1-6'
  ),
  (
    3, 'Jose', 'Higaldo', '3@mail.com',
    '3333', null, 'johigaldo', 'Masculino',
    '1996-05-28', 'Medium', '2018-10-1'
  ),
  (
    4, 'Natalia', 'Patoco', '4@mail.com',
    '4444', null, 'nat_125', 'Femenino',
    '1991-07-21', 'Premium', '2009-1-6'
  ),
  (
    5, 'Florencia', 'Portel', '5@mail.com',
    '5555', null, 'florpo', 'Femenino',
    '1997-05-04', 'Premium', '2017-6-16'
  );

-- Update the client Medium and Basic

UPDATE client SET nick = 'juanperez12', password = 0000 WHERE id_client = 1;
UPDATE client SET type_subscription = 'Premium' WHERE id_client = 3;
UPDATE client SET type_subscription = 'Premium' WHERE id_client = 4;

-- EXPECT DATA SET

-- id_client
-- name
-- lastname
-- mail
-- password
-- telephone
-- nick
-- sex
-- birthdate
-- type_subscription
-- date_subscription

-- 1
-- Juan
-- Perez
-- 1@mail.com
-- 0
-- juanperez12
-- Masculino
-- 1990-12-01
-- Basic
-- 2010-10-05

-- 2
-- Pedro
-- Peralta
-- 2@mail.com
-- 2222
-- peperal
-- Masculino
-- 1988-07-04
-- Premium
-- 2009-01-06

-- 3
-- Jose
-- Higaldo
-- 3@mail.com
-- 3333
-- johigaldo
-- Masculino
-- 1996-05-28
-- Premium
-- 2018-10-04

-- 4
-- Natalia
-- Patoco
-- 4@mail.com
-- 4444
-- nat_125
-- Femenino
-- 1991-07-21
-- Premium
-- 2009-01-06

-- 5
-- Florencia
-- Portel
-- 5@mail.com
-- 5555
-- florpo
-- Femenino
-- 1997-05-04
-- Premium
-- 2017-06-16
