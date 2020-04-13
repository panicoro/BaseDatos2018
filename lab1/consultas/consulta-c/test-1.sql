-- ------------------------------------------------------
-- TEST CASE: Episode list

-- DESCRIPTION:
-- The titles of the episodes corresponding to the series
-- The black mirror of season 4 are listed.
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

INSERT INTO program
VALUES
  (7, 'Planet Green'),
  (8,'Telefe'),
  (9,'Netflix'),
  (10,'Netflix');

INSERT INTO season
VALUES
  (8,1,'2018-1-1'),
  (9,9,'2015-1-1'),
  (10,4,'2017-1-1');

INSERT INTO episode
VALUES
  (
    8, 1, 'Terapia de choque con la familia Garzón',
    '2018-03-22', '30', 'Gustavo y Tamara se animaron a un desafío dulce muy difícil.'
  ),
  (
    8, 1, 'Divan de Vero', '2018-03-23',
    '30', 'Lizy visitó la casa de Luisa Albinoni y Silvio Soldán se animó al
    diván de Vero.'
  ),
  (
    8, 1, 'Terapia de grupo', '2018-03-24',
    '30', 'Juan Gil Navarro, Jorgelina Aruzzi y Manu Pal hicieron terapia de
    grupo en el diván.'
  ),
  (
    9, 9, 'La inercia matrimonial', '2015-05-1',
    '30', 'Leonard y Penny se disponen a dar el gran paso de sus vidas con Las
    Vegas como destino de su celebración del tan esperado enlace matrimonial
    entre ambos.'
  ),
  (
    9, 9, 'La oscilación de la separación',
    '2015-05-8', '30', 'Leonard decide hacer frente a su infidelidad y, por ello, acude
     a hablar con la mujer a la que besó con el fin de que a Penny se le pase
     el mosqueo y vea que no ha significado nada para él.'
  ),
  (
    9, 9, 'La corrosión de la despedida de soltero',
    '2015-05-15', '30', 'Los chicos deciden irse de despedida de soltero pero un
     contratiempo en forma de pinchazo de rueda les hace desviarse de la ruta y
     tiempo que tenían planeados.'
  ),
  (
    10, 4, 'Cabeza de metal', '2017-11-3',
    '30', 'Es el capítulo con el que quieres hacer otra cosa, donde nunca acabas
     de conectar con la huida de su protagonista ni importa que le persigan
     las máquinas. '
  ),
  (
    10, 4, 'La ciencia de matar', '2017-11-10',
    '30', 'La ciencia de matar trata de ser un episodio grande de Black Mirror,
    casi una superproducción bélica, pero se pierde en un giro nada
    inesperado y en un mensaje que queda claro casi desde el primer momento. '
  ),
  (
    10, 4, 'Odio nacional', '2017-11-17',
    '30', 'Es el último capítulo de la tercera temporada, un episodio de 90
     minutos planteado como un thriller de suspense en el que personas que
     han sido objeto de la ira de las redes sociales mueren
     en extrañas circunstancias.'
  );

-- EXPECTED DATA SET

-- title

-- Cabeza de metal
-- La ciencia de matar
-- Odio nacional

