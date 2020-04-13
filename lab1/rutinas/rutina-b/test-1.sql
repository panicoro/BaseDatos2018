-- ---------------------------------------------------------------
-- TEST CASE: Successful update average movie rating

-- DESCRIPTION: Clients and content were added. A few reviews about
-- the movies with id = 2 and id = 3 will be added to see how the movie table
-- is updated.
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

-- Add clients
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

-- Add content
INSERT INTO content
VALUES
  (
    1, 'Pelicula', 'Titanic', 'Una joven (Kate Winslet) de sociedad
  abandona a su arrogante pretendiente (Billy Zane) por un artista
  (Leonardo DiCaprio) humilde en el transatlántico que se hundió durante
  su viaje inaugural.', '20th Century Fox'
  ),
  (
    2, 'Pelicula', 'Steve Jobs', 'Se narra la vida, profesional y
  personal, de Steve Jobs, el fundador de Apple, quien
  creó el Macintosh en 1984; y de como con su determinación superó que lo
  despidieran de su propia compañía en 1988, para regresar diez años más tarde
  y revolucionar de nuevo la industria con el iMac.',
    'Legendary Pictures'
  ),
  (
    3, 'Pelicula', 'La isla', 'En el año 2019, un mercenario
  (Djimon Hounsou) persigue a dos clones (Ewan McGregor, Scarlett Johansson)
  que escaparon de unas instalaciones de investigación tras descubrir su
  verdadero destino.',
    'Warner Bros'
  ),
  (
    4, 'Pelicula', 'El hombre de la mascara de hierro',
    'Ex mosqueteros tratan de derrocar al tiránico rey Luis XIV, usando
  a su encarcelado hermano gemelo en su plan.',
    'United Artists Corporation'
  ),
  (
    5, 'Pelicula', '¿A quién ama Gilbert Grape?',
    'En Endora,
  un pequeño pueblo del Medio Oeste estadounidense, vive Gilbert Grape,
  un joven empleado en un supermercado cuya vida es cuidar de una madre
  inmensamente obesa y de un hermano con discapacidad mental,
  y está cansado de su rutina. Su vida transcurre anodina hasta que
  la llegada de Becky, una chica moderna y muy especial, lo cambia todo.',
    'Paramount Pictures'
  ),
  (
    6, 'Pelicula', 'Snatched', 'Cuando su novio la echa a perder antes de sus
     exóticas
    vacaciones y ser despedida de su trabajo, Emily Middleton persuade a
    su ultra-cautelosa madre para viajar con ella al Ecuador,
    con resultados inesperados.',
    'Twentieth Century Fox Film Corporation'
  ),
  (
    7, 'Programa','Greensburg', 'Greensburg fue golpeada por un
  tornado EF5 que destruyó el 95 por ciento de la comunidad rural.
  Los residentes decidieron no solamente quedarse y reconstruir la ciudad,
  además lo hicieron de forma consciente y amigable con el medio ambiente.',
    'Pilgrim Films'
  ),
  (
    8, 'Programa', 'Corta por Lozano', 'un programa de televisión argentino
    de género
    magazine. Actualidad, espectáculos, entrevistas, humor y mucho más en
    las tardes de Telefe.  Verónica Lozano vuelve con todo, y la acompaña
    un panel de lujo para aportar su mirada sobre cada uno de los temas
    del día.', 'Kuarzo Entertainment Argentina'
  ),
  (
    9, 'Programa', 'The Big Bang Theory', 'La serie comienza con la llegada
    de Penny,
    aspirante a actriz, al apartamento vecino,  que comparten Sheldon y
    Leonard, dos físicos que trabajan en el Instituto Tecnológico de
    California (Caltech). Leonard se enamora desde el primer momento de Penny.',
    'Warner Bros y Chuck Lorre'
  ),
  (
    10, 'Programa', 'The black mirror', 'es una serie de televisión británica
    creada por Charlie Brooker. La serie gira en torno a cómo la tecnología
    afecta nuestras vidas, en ocasiones sacando lo peor de nosotros.',
    'Zeppotron'
  ),
  (
    11, 'Pelicula', 'Wonder Woman', 'Diana es una joven guerrera, hija de
    Hipólita,
    criada como princesa guerrera de las amazonas en una isla llamada
    Themiscyra en donde es protegida y entrenada
      para ser una luchadora invencible.',
    'DC Films'
  );

-- Add movies
INSERT INTO movie
VALUES
  (1, '1977-12-19', '3:15',0),
  (2, '1980-2-19', '2:15',0),
  (3, '1978-1-17', '2:00',0),
  (4, '1985-1-16', '3:00',0),
  (5, '1999-4-15', '2:25',0),
  (6, '2017-5-12', '1:30',0),
  (11, '2017-5-5', '2:30',0);

-- Reviews of client 2
INSERT INTO reviews
VALUES
  (
    1, 2, 1, 'Odio Titanic', '2018-07-25','1'
   ),
  (
    2, 2, 2, 'Odio SJ', '2018-08-25', '1'
   );

-- Reviews of client 4
INSERT INTO reviews
VALUES
  (
    6, 4, 2, 'Amo La Isla', '2018-08-5','5'
  ),
  (
    7, 4, 1, 'Amo Titanic', '2018-08-4','5'
  );

-- EXPECTED DATA_SET

-- id_movie
-- release_day
-- duration
-- average_rating

-- 1
-- 1977-12-19
-- 03:15:00
-- 3

-- 2
-- 1980-02-19
-- 02:15:00
-- 3

-- 3
-- 1978-01-17
-- 02:00:00
-- 0

-- 4
-- 1985-01-16
-- 03:00:00
-- 0

-- 5
-- 1999-04-15
-- 02:25:00
-- 0
-- 6
-- 2017-05-12
-- 01:30:00

-- 0
-- 11
-- 2017-05-05
-- 02:30:00
-- 0