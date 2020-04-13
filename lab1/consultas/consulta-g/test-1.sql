-- -------------------------------------------------------
-- TEST CASE: Successful calculation of the average rating
-- of a movie with id = 3.

-- DESCRIPTION: Contents, clients and reviews are added.
-- Only the clients with id = 2, 4, 3 have made reviews
-- about the movie with id_content = 3.
-- -------------------------------------------------------

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

-- Reviews of client 2
INSERT INTO reviews
VALUES
  (
    1, 2, 1, 'Odio Titanic', '2018-07-25','1'
   ),
  (
    2, 2, 2, 'Odio SJ', '2018-08-25', '1'
   ),
  (
    3, 2, 3, 'Odio La Isla', '2018-08-6','1'
  ),
  (
    4, 2, 4, 'Odio EHMH', '2018-01-25','1'
  ),
  (
    5, 2, 5, 'Odio esta también', '2017-12-22','1'
  );

-- Reviews of client 4
INSERT INTO reviews
VALUES
  (
    6, 4, 2, 'Amo La Isla', '2018-08-5','5'
  ),
  (
    7, 4, 1, 'Amo Titanic', '2018-08-4','5'
  ),
  (8, 4, 3, 'Amo SJ', '2018-08-3', '5'
   ),
  (
    9, 4, 4, 'Amo EHMH', '2018-08-2', '5'
   ),
  (
    10, 4, 5, 'Amo esta también', '2018-08-1','5'
  );

-- Reviews of client 3
INSERT INTO reviews
VALUES
  (
    11, 3, 2, 'No me interesó', '2018-06-25','3'
  ),
  (
    19, 3, 3, 'Me gusto mucho', '2018-06-25','5'
  );
;

-- Review of client 1
INSERT INTO reviews
VALUES
  (
  12, 1, 2, 'Aceptable', '2018-08-25', '4'
  ),
  (
  14, 1, 1, 'Maso o menos', '2018-10-4','2'
  ),
  (
  15, 1, 11, 'Increible', '2018-10-2','2'
  );
-- Review of client 5
INSERT INTO reviews
VALUES
  (
  13, 5, 2, 'Maso o menos', '2018-08-6','2'
  ),
  (
  16, 5, 1, 'La mejor pelicula siempre', '2018-10-4','2'
  ),
  (
  17, 5, 7, 'Me aburrio, horrible', '2018-10-4','2'
  ),
  (
  18, 5, 6, 'Me aburrio, horrible', '2018-10-4','2'
  );

-- EXPECTED DATA SET

-- avarage_raiting
-- 3.6667





