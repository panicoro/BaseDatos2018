-- ------------------------------------------------------
-- TEST CASE: Successful list premium clients with
-- subscription date 2009-1-6 .

-- DESCRIPTION: 2 premium customers are charged
-- with the desired date and it is expected to obtain said
-- customers after consultation.
-- -------------------------------------------------------

-- INPUT DATA SET

-- Add clients
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

INSERT INTO client
VALUES
  (
    1, 'Juan', 'Perez', '1@mail.com', '1111',
    null, 'juanp', 'Masculino', '1990-12-1',
    'Basic', '2010-10-5'
  ),
  (
    2, 'Pedro', 'Peralta', '2@mail.com',
    '2222', null, 'peperal', 'Masculino',
    '1988-07-04', 'Premium', '2009-1-6'
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

-- 2
-- Pedro
-- Peralta
-- 2@mail.com
-- 2222
-- null
-- peperal
-- Masculino
-- 1988-07-04
-- Premium
-- 2009-01-06

-- 4
-- Natalia
-- Patoco
-- 4@mail.com
-- 4444
-- null
-- nat_125
-- Femenino
-- 1991-07-21
-- Premium
-- 2009-01-06
