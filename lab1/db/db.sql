/* Clients table */
CREATE TABLE client (
  id_client INT,
  name VARCHAR(20) NOT NULL,
  lastname VARCHAR(20) NOT NULL,
  mail VARCHAR(30) NOT NULL,
  password VARCHAR(20) NOT NULL,
  telephone INT,
  nick VARCHAR(20) NOT NULL,
  sex ENUM('Masculino', 'Femenino', 'Otros'),
  birthdate DATE,
  type_subscription ENUM('Basic', 'Medium', 'Premium'),
  date_subscription DATE NOT NULL,
  CONSTRAINT clientPK PRIMARY KEY (id_client)

) ENGINE = InnoDB;

/* Employee table */
CREATE TABLE employee (
  id_employee INT,
  name VARCHAR(20) NOT NULL,
  lastname VARCHAR(20) NOT NULL,
  mail VARCHAR(30) NOT NULL,
  password VARCHAR(20) NOT NULL,
  CONSTRAINT employeePK PRIMARY KEY (id_employee)

) ENGINE = InnoDB;

/* Employee telephone table */
CREATE TABLE employee_telephone (
  id_telephone INT,
  ntelephone INT,
  CONSTRAINT employee_telephonePK PRIMARY KEY (id_telephone, ntelephone),
  CONSTRAINT employee_telephoneFK FOREIGN KEY (id_telephone) REFERENCES employee(id_employee)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Employee role table */
CREATE TABLE employee_role(
  id_employee INT,
  role VARCHAR(30) NOT NULL,
  CONSTRAINT employee_rollPK PRIMARY KEY (id_employee, role),
  CONSTRAINT employee_rollFK FOREIGN KEY (id_employee) REFERENCES employee(id_employee)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Contents table */
CREATE TABLE content (
  id_content  INT AUTO_INCREMENT,
  type ENUM ('Pelicula','Programa'),
  title VARCHAR(50) NOT NULL,
  description VARCHAR(500),
  producer VARCHAR(50) NOT NULL,
  CONSTRAINT contentPK PRIMARY KEY (id_content)
) ENGINE = InnoDB;

/* Reviews table */
CREATE TABLE reviews (
  id_reviews INT,
  id_client INT,
  id_content INT,
  title VARCHAR(30) NOT NULL,
  date DATE NOT NULL,
  qualification INT NOT NULL CHECK (qualification > 0 AND qualification < 6),
  CONSTRAINT reviewsPK PRIMARY KEY (id_reviews),
  CONSTRAINT reviewFK_client FOREIGN KEY (id_client) REFERENCES client(id_client)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT reviewFK_content FOREIGN KEY (id_content) REFERENCES content(id_content)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Content kind table */
CREATE TABLE content_kind (
  id_kind INT,
  kind ENUM('Acción', 'Ciencia ficción', 'Comedia', 'Drama', 'Fantasía', 'Musical', 'Romance', 'Suspense', 'Terror'),
  CONSTRAINT contentPK PRIMARY KEY (id_kind, kind),
  CONSTRAINT contentFK FOREIGN KEY (id_kind) REFERENCES content(id_content)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Programs table */
CREATE TABLE program (
  id_program INT,
  tv VARCHAR(25) NOT NULL ,
  CONSTRAINT programPK PRIMARY KEY (id_program),
  CONSTRAINT programFK FOREIGN KEY (id_program) REFERENCES content(id_content)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Movies table */
CREATE TABLE movie (
  id_movie INT,
  release_day DATE,
  duration TIME,
  average_rating INT NOT NULL,
  CONSTRAINT moviePK PRIMARY KEY (id_movie),
  CONSTRAINT movieFK FOREIGN KEY (id_movie) REFERENCES content(id_content)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Movies subtitles table */
CREATE TABLE movie_subtitles(
  id_movie INT,
  subtitle ENUM('Ingles', 'Español', 'Aleman', 'Japanes', 'Italiano', 'Frances'),
  CONSTRAINT movie_subtitlesPK PRIMARY KEY (id_movie),
  CONSTRAINT movie_subtitlesFK FOREIGN KEY (id_movie) REFERENCES movie(id_movie)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Consumed table */
CREATE TABLE consumed(
  id_client INT,
  id_content INT,
  CONSTRAINT consumedPK PRIMARY KEY (id_client, id_content),
  CONSTRAINT consumed_clientFK FOREIGN KEY (id_client) REFERENCES client(id_client)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT consumed_contentFK FOREIGN KEY (id_content) REFERENCES content(id_content)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Content worker table */
CREATE TABLE content_worker(
  id_worker INT AUTO_INCREMENT,
  website VARCHAR(50),
  birthdate DATE,
  sex ENUM('Masculino', 'Femenino', 'Otro'),
  name VARCHAR(20) NOT NULL,
  lastname VARCHAR(20) NOT NULL,
  CONSTRAINT content_workerPK PRIMARY KEY (id_worker)
) ENGINE = InnoDB;

/* Role worker table */
CREATE TABLE role_worker(
  id_content INT,
  id_worker INT,
  role ENUM('Protagonista', 'Secundario', 'Director',
            'Actor-Director'),
  CONSTRAINT role_workerPK PRIMARY KEY (id_content, id_worker),
  CONSTRAINT role_workerFK FOREIGN KEY (id_worker) REFERENCES content_worker(id_worker)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  constraint role_worker_movieFK FOREIGN KEY (id_content) REFERENCES content(id_content)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Seasons table */
CREATE TABLE season(
  id_program INT,
  nseason INT,
  year DATE NOT NULL,
  CONSTRAINT seasonPK PRIMARY KEY (id_program, nseason),
  CONSTRAINT seasonFK FOREIGN KEY (id_program) REFERENCES program(id_program)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/* Episodes tables */
CREATE TABLE episode(
  id_program INT,
  nseason INT,
  title VARCHAR(500),
  release_date DATE,
  duration TIME,
  description VARCHAR(500),
  CONSTRAINT episodePK PRIMARY KEY (id_program, nseason, title),
  CONSTRAINT episode_seasonFK FOREIGN KEY (id_program,nseason) REFERENCES season(id_program, nseason)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;