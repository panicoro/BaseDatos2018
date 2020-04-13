-- --------------------------------------------------------------------
-- TEST CASE: Successful list of actors.

-- DESCRIPTION:
-- The INSERT necessary to perform the query are added.
-- List the actors who have acted in all television programs in
-- where Jim Parsons acted with id_worker = 10.
-- --------------------------------------------------------------------

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

INSERT INTO content_worker
VALUES
  (
    1, 'wwww.leonardiodicaprio.com',
    '1974-11-11', 'Masculino', 'Leonardo', 'DiCaprio'
  ),
  (
    2, null, '1970-10-08', 'Masculino', 'Matt', 'Damon'
  ),
  (
    3, null, '1963-05-09', 'Masculino', 'Johnny ', 'Deep'
  ),
  (
    4, 'wwww.tomcruise.com', '1962-07-03','Masculino',
    'Tom', 'Cruise'
  ),
  (
    5, null, '1963-12-19', 'Masculino', 'Brad', 'Pitt'
  ),
  (
    6, null, '1975-10-05', 'Femenino', 'Kate', 'Winslet'
  ),
  (
    7, null, '1956-10-20', 'Masculino', 'Danny', 'Boyle'
  ),
  (
    8, NULL, '1954-8-16', 'Masculino', 'James', ' Cameron'
  ),
  (
    9, NULL, '1975-4-30', 'Masculino', 'Johnny', 'Galecki'
  ),
  (
    10, NULL, '1973-3-24', 'Masculino', 'Jim', 'Parsons'
  ),
  (
    11, NULL, '1981-6-1', 'Femenino','Amy', 'Schumer'
  ),
  (
    12, NULL, '1945-11-21', 'Femenino', 'Goldie Jeanne','Hawn'
  ),
  (
    13, NULL, '1977-4-2', 'Masculino', 'Michael', 'Fassbender'
  ),
  (
    14, NULL, '1982-4-15', 'Masculino', 'Seth', 'Rogen'
  ),
  (
    15, NULL, '1971-7-23', 'Femenino', 'Patty', 'Jenkins'
  ),
  (
    16, NULL, '1975-7-17', 'Femenino', 'Elena', ' Anaya'
  ),
  (
    17, NULL, '1969-7-3', 'Femenino', 'Shawnee', 'Smith'
  ),
  (
   18, NULL,'1980-4-17', 'Masculino','Agosto', 'Nicholas'
  ),
  (
   19,NULL,'1986-12-17' , 'Femenino','Bell','Emma'
  ),
  (
   20,NULL, '1983-6-23', 'Masculino','Fisher', 'Miles'
   );

INSERT INTO role_worker
VALUES
  (1, 1, 'Protagonista'),
  (1, 6, 'Protagonista'),
  (2, 6, 'Secundario'),
  (3, 1, 'Protagonista'),
  (4, 1, 'Protagonista'),
  (5, 1, 'Secundario'),
  (2, 7, 'Director'),
  (7, 1, 'Protagonista'),
  (2, 13, 'Protagonista'),
  (2, 14, 'Secundario'),
  (6, 11, 'Protagonista'),
  (6, 12, 'Protagonista'),
  (11, 15, 'Director'),
  (11, 16, 'Director'),
  (3, 15, 'Director'),
  (9, 10, 'Protagonista'),
  (9, 9, 'Protagonista'),
  (10, 10, 'Protagonista'),
  (10, 20, 'Protagonista'),
  (10, 19, 'Protagonista'),
  (10, 18, 'Protagonista');

INSERT INTO program
VALUES
  (7, 'Planet Green'),
  (8,'Telefe'),
  (9,'Netflix'),
  (10,'Netflix');

-- EXPECTED DATA SET

-- id_worker
-- lastname
-- name

-- 9
-- Galecki
-- Johnny

-- 18
-- Agosto
-- Nicholas

-- 19
-- Bell
-- Emma

-- 20
-- Fisher
-- Miles

