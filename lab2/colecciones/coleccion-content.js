// The content collection contains documentaries related to movies,
// TV shows and episodes.

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");
// drop users colection
db.content.drop();

db.content.insertMany([
    {
        "_id":9,
        "title": "Black Mirror",
        "category": "TVshow",
        "description": "Cada episodio tiene un tono diferente, un entorno" +
            " diferente, incluso una realidad diferente, " +
            "pero todos son acerca de la forma en que vivimos ahora " +
            "- y la forma en que podríamos estar viviendo en 10 minutos " +
            "si somos torpes",
        "genres": [
            "Ciencia Ficción",
            "Drama"
        ],
        "episode": [11,13,15,17,19,21]
    },
    {
        "_id": 23,
        "title": "The Big Bang Theory",
        "category": "TVshow",
        "description":"Leonard y Sheldon son dos físicos brillantes, " +
            "genios en el laboratorio, pero algo torpes para las relaciones " +
            "sociales del mundo real",
        "genres": [
            "Comedia",
            "Romance"
        ],
        "episode": [25,27,29]
    },
    {
        "_id":31,
        "title":"La maldición de Hill House",
        "category": "TVshow",
        "description":"Con flashes del pasado y del presente, " +
            "una familia rota enfrenta los tormentosos recuerdos de " +
            "su viejo hogar y el terror que la hizo alejarse de allí.",
        "genres":[
            "Terror",
            "Drama"
        ],
        "episode": [33,35,37]
    },
    {
        "_id": 1,
        "title": "Titanic",
        "category": "Movie",
        "description": "Una joven (Kate Winslet) de sociedad abandona a su " +
            "arrogante pretendiente (Billy Zane) por un artista " +
            "(Leonardo DiCaprio) humilde en el transatlántico que " +
            "se hundió durante su viaje inaugural.",
        "genres": [
            "Drama",
            "Suspenso"
        ],
        "producer": "20th Century Fox",
        "duration": "3:15",
        "release_date": new Date ("1997-12-19"),
        "subtitles": [
            "Español",
            "Inglés",
            "Francés"
        ],
        "artists": [
            {
                "_id": 55,
                "role": "Protagonista",
                "names":{
                    "first": "Tom",
                    "last": "Cruise"
                }
            },
            {
                "_id": 57,
                "role": "Protagonista",
                "names":{
                    "first": "Kate",
                    "last": "Winslet"
                }
            },
            {
                "_id": 59,
                "role": "Director",
                "names": {
                    "first": "James",
                    "last": "Cameron"
                }
            }
        ]
    },
    {
        "_id": 2,
        "title": "Steve Jobs",
        "category": "Movie",
        "description": "Se narra la vida, profesional y  personal, " +
            "de Steve Jobs, el fundador de Apple, quie  creó el Macintosh en" +
            " 1984; y de como con su determinación superó que lo " +
            "despidieran de su propia compañía en 1988, para regresar diez " +
            "años más tarde y revolucionar de nuevo la industria con el iMac.",
        "genres": [
            "Drama"
        ],
        "producer": "Legendary Pictures",
        "duration": "2:15",
        "release_date": new Date ("2005-2-19"),
        "subtitles": [
            "Español",
            "Inglés",
            "Alemán"
        ],
        "artists": [
            {
                "_id": 49,
                "role": "Protagonista",
                "names": {
                    "first": "Matt",
                    "last": "Damon"
                }
            },
            {
                "_id": 51,
                "role": "Secundario",
                "names": {
                    "first": "Johnny",
                    "last": "Deep"
                }
            },
            {
                "_id": 69,
                "role": "Protagonista",
                "names":{
                    "first": "Elena",
                    "last": "Anya"
                }
            },
            {
                "_id": 73,
                "role": "Director",
                "names":{
                    "first": "Danny",
                    "last": "Boyle"
                }
            }
        ]
    },
    {
        "_id": 3,
        "title": "La isla'",
        "category": "Movie",
        "description": "En el año 2019, un mercenario (Djimon Hounsou)" +
            " persigue a dos clones (Ewan McGregor, Scarlett Johansson) " +
            "que escaparon de unas instalaciones de investigación tras" +
            " descubrir su verdadero destino.",
        "genres": [
            "Ciencia ficción"
        ],
        "producer": "Warner Bros",
        "duration": "1:45",
        "release_date": new Date ("2005-08-11"),
        "subtitles": [
            "Español",
            "Inglés",
        ],
        "artists": [
            {
                "_id": 69,
                "role":"Protagonista",
                "names":{
                    "first": "Elena",
                    "last": "Anya"
                }
            },
            {
                "_id": 39,
                "role": "Protagonista",
                "names": {
                    "first": "Michael",
                    "last": "Huisman"
                }
            },
            {
                "_id": 49,
                "role": "Secundario",
                "names": {
                    "first": "Matt",
                    "last": "Damon"
                }
            },
            {
                "_id": 1,
                "role": "Director",
                "names": {
                    "first": "Michael",
                    "last": "Bay"
                }
            },
            {
                "_id": 2,
                "role": "Director",
                "names": {
                    "first": "Silwya",
                    "last": "Kubus"
                }
            }
        ]
    },
    {
        "_id": 4,
        "title": "El hombre de la máscara de hierro",
        "category": "Movie",
        "description": "Ex mosqueteros tratan de derrocar al tiránico " +
            "rey Luis XIV, usando a su encarcelado hermano gemelo en su plan.",
        "genres": [
            "Drama",
            "Ficción histórica"
        ],
        "producer": "United Artists Corporation",
        "duration": "1:55",
        "release_date": new Date ("1998-05-07"),
        "subtitles": [
            "Español",
            "Inglés",
            "Portugués",
            "Francés"
        ],
        "artists": [
            {
                "_id":47,
                "role": "Protagonista",
                "names": {
                    "first": "Leonardo",
                    "last": "Dicaprio"
                }
            },
            {
                "_id": 49,
                "role": "Protagonista",
                "names": {
                    "first": "Matt",
                    "last": "Damon"
                }
            },
            {
                "_id": 51,
                "role": "Secundario",
                "names": {
                    "first": "Johnny",
                    "last": "Deep"
                }
            
            },
            {
                "_id": 3,
                "role": "Director",
                "names": {
                    "first": "Randall",
                    "last": "Wallace"
                }

            },
            {"_id": 5,
                "role": "Director",
                "names": {
                    "first": "Sofia",
                    "last": "Coppola"
                }

            },
            {"_id": 6,
                "role": "Director",
                "names": {
                    "first": "Claire",
                    "last": "Denis"
                }

            }
        ]
    },
    {
        "_id": 5,
        "title": "¿A quién ama Gilbert Grape?",
        "category": "Movie",
        "description": "En Endora, un pequeño pueblo del Medio Oeste " +
            "estadounidense, vive Gilbert Grape, un joven empleado en un " +
            "supermercado cuya vida es cuidar de una madre inmensamente " +
            "obesa y de un hermano con discapacidad mental y " +
            "está cansado de su rutina. Su vida transcurre anodina hasta " +
            "que la llegada de Becky, una chica moderna y muy especial, " +
            "lo cambia todo.",
        "genres": [
            "Drama"
        ],
        "producer": "Paramount Pictures",
        "duration": "1:58",
        "release_date": new Date ("1994-10-24"),
        "subtitles": [
            "Español",
            "Inglés",
            "Alemán",
            "Francés"
        ],
        "artists": [
            {
                "_id": 65,
                "role": "Protagonista",
                "names": {
                    "first": "Amy",
                    "last": "Schumer"
                }
            },
            {
                "_id": 69,
                "role": "Protagonista",
                "names":{
                    "first": "Elena",
                    "last": "Anya"
                }
            },
            {
                "_id": 47,
                "role": "Secundario",
                "names": {
                    "first": "Leonardo",
                    "last": "Dicaprio"
                }
            },
            {
                "_id": 4,
                "role": "Director",
                "names": {
                    "first": "Lasse",
                    "last": "Hallström"
                }
            }
        ]
    },
    {
        "_id": 6,
        "title": "Snatched",
        "category": "Movie",
        "description": "Cuando su novio la echa a perder antes de sus " +
            "exóticas vacaciones y ser despedida de su trabajo, " +
            "Emily Middleton persuade a su ultra-cautelosa madre para " +
            "viajar con ella al Ecuador, con resultados inesperados.'",
        "genres": [
            "Comedia"
        ],
        "producer": "",
        "duration": "2:10",
        "release_date": new Date ("2017-06-17"),
        "subtitles": [
            "Español",
            "Inglés"
        ],
        "artists": [
            {
                "_id": 47,
                "role": "Protagonista",
                "names": {
                    "first": "Leonardo",
                    "last": "Dicaprio"
                }
            },
            {
                "_id": 65,
                "role": "Protagonista",
                "names": {
                    "first": "Amy",
                    "last": "Schumer"
                }
            },
            {
                "_id": 39,
                "role": "Secundario",
                "names": {
                    "first": "Michael",
                    "last": "Huisman"
                }
            },
            {"_id": 5,
                "role": "Director",
                "names": {
                    "first": "Sofia",
                    "last": "Coppola"
                }

            },
            {"_id": 6,
                "role": "Director",
                "names": {
                    "first": "Claire",
                    "last": "Denis"
                }

            },
            {"_id": 7,
                "role": "Director",
                "names": {
                    "first": "Carla",
                    "last": "Simón"
                }

            },
        ]
    },
    {
        "_id": 11,
        "TV_show": {
            "_id": 9,
            "title": "Black Mirror"
        },
        "title": "El himno nacional",
        "category": "Episode",
        "description":"El primer ministro Michael Callow se enfrenta " +
            "a un dilema impactante cuando la princesa Susannah, " +
            "un miembro muy querido de la familia real, es secuestrada.",
        "duration": "00:40",
        "release_date": new Date("2011-12-04"),
        "season": 1,
        "year": "2011",
        "episode_number": 1,
        "producer": "Zeppotron",
        "artists":[
            {
                "_id": 39,
                "role": "Protagonista",
                "names": {
                    "first": "Michael",
                    "last": "Huisman"
                }
            },
            {
                "_id": 43,
                "role": "Protagonista",
                "names": {
                    "first": "Timothy",
                    "last": "Hutton"
                }
            },
            {
                "_id": 51,
                "role": "Secundario",
                "names": {
                    "first": "Johnny",
                    "last": "Deep"
                }
            }
        ]
    },
    {
        "_id": 13,
        "TV_show": {
            "_id": 9,
            "title": "Black Mirror"
        },
        "title":"15 millones de méritos",
        "category": "Episode",
        "description": "Tras fracasar al intentar impresionar a los jueces " +
            "en una competición de canto, una mujer tiene que hacer " +
            "actuaciones degradantes o regresar a su vida de esclava.",
        "duration":"00:40",
        "release_date": new Date("2011-12-11"),
        "season": 1,
        "year": "2011",
        "episode_number": 2,
        "producer": "Zeppotron",
        "artists": [
            {
                "_id": 39,
                "role": "Secundario",
                "names": {
                    "first": "Michael",
                    "last": "Huisman"
                }
            },
            {
                "_id": 45,
                "role": "Protagonista",
                "names": {
                    "first": "Mckenna",
                    "last": "Grace"
                }
            },
            {
                "_id": 55,
                "role": "Protagonista",
                "names":{
                    "first": "Tom",
                    "last": "Cruise"
                }
            },
            {
                "_id": 67,
                "role": "Secundario",
                "names": {
                    "first": "Patty",
                    "last": "Jenkins"
                }
            }
        ]
    },
    {
        "_id": 15,
        "TV_show": {
            "_id": 9,
            "title": "Black Mirror"
        },
        "title": "Toda tu historia",
        "category": "Episode",
        "description": "En un futuro cercano, todo el mundo tendrá acceso a un" +
            " implante de memoria que grabe todo lo que los humanos hagan, " +
            "vean y oigan",
        "duration": "00:40",
        "release_date": new Date("2011-12-18"),
        "season": 1,
        "year": "2011",
        "episode_number": 3,
        "producer": "Zeppotron",
        "artists": [
            {
                "_id": 59,
                "role": "Protagonista",
                "names": {
                    "first": "James",
                    "last": "Cameron"
                }
            },
            {
                "_id": 69,
                "role": "Protagonista",
                "names":{
                    "first": "Elena",
                    "last": "Anya"
                }
            },
            {
                "_id": 41,
                "role": "Secundario",
                "names": {
                    "first": "Carla",
                    "last": "Gugino"
                }
            }
        ]
    },
    {
        "_id": 17,
        "TV_show": {
            "_id": 9,
            "title": "Black Mirror"
        },
        "title":"Vuelvo enseguida",
        "category": "Episode",
        "description":"Después de enterarse de un nuevo servicio que " +
            "permite a la gente estar en contacto con los muertos, Martha, " +
            "solitaria y afligida, conecta con su difunto novio.",
        "duration": "00:40",
        "release_date": new Date("2013-02-11"),
        "season": 2,
        "year":"2013",
        "episode_number": 1,
        "producer": "Zeppotron",
        "artists": [
            {
                "_id":43,
                "role":"Protagonista",
                "names": {
                    "first": "Timothy",
                    "last": "Hutton"
                }
            },
            {
                "_id":71,
               "names": {
                    "first": "Shawnee",
                    "last": "Smith",
                },
                "role":"Protagonista"
            },
            {
                "_id":67,
                "names": {
                    "first": "Patty",
                    "second": "Jenkins",
                },
                "role":"Secundario",
            
            }
        ]
    },
    {
        "_id": 19,
        "TV_show": {
            "_id": 9,
            "title": "Black Mirror"
        },
        "title":"Oso blanco",
        "category": "Episode",
        "description": "Victoria se despierta y no puede recordar nada de su" +
            " vida. Todo el mundo con el que se encuentra, se niega a " +
            "comunicarse con ella.",
        "duration": "00:40",
        "release_date": new Date("2013-02-18"),
        "season": 2,
        "year": "2013",
        "episode_number": 2,
        "producer": "Zeppotron",
        "artists": [
            {
                "_id": 39,
                "role": "Protagonista",
                "names": {
                    "first": "Michael",
                    "last": "Huisman"
                }
            },
            {
                "_id": 57,
                "role": "Protagonista",
                "names": {
                    "first": "Kate",
                    "last": "Winslet"
                }
            },
            {
                "_id": 53,
                "role": "Secundario",
                "names": {
                    "first": "Brad",
                    "last": "Pitt"
                }
            }
        ]
    },
    {
        "_id": 21,
        "TV_show": {
            "_id": 9,
            "title": "Black Mirror"
        },
        "title":"El momento Waldo",
        "category": "Episode",
        "description":"Un cómico fracasado que pone la voz a un oso de " +
            "dibujos animados, se ve arrastrado a la política cuando los" +
            " ejecutivos quieren que el oso se presente como candidato.",
        "duration":"00:40",
        "release_date": new Date("2013-02-25"),
        "season": 2,
        "year": "2013",
        "episode_number": 3,
        "producer": "Zeppotron",
        "artists": [
            {
                "_id": 55,
                "role": "Protagonista",
                "names":{
                    "first": "Tom",
                    "last": "Cruise"
                }
            },
            {
                "_id": 45,
                "role": "Protagonista",
                "names": {
                    "first": "Mckenna",
                    "last": "Grace"
                }
            },
            {
                "_id": 57,
                "role": "Secundario",
                "names":{
                    "first": "Kate",
                    "last": "Winslet"
                }
            }
        ]
    },
    {
        "_id": 25,
        "TV_show": {
            "_id": 23,
            "title": "The Bing Bang Theory"
        },
        "title": "La hipótesis del gran cerebro",
        "category": "Episode",
        "description": "Después de una visita sin éxito al banco de semen, " +
            "Leonard y Sheldon regresan a casa para encontrarse con Penny," +
            " una nueva vecina que se ha mudado al apartamento de enfrente.",
        "duration":"00:30",
        "release_date":new Date("2007-09-24"),
        "season": 1,
        "year": "2007",
        "episode_number": 1,
        "producer": "Chuck Lorre Productions",
        "artists": [
            {
                "_id": 63,
                "role": "Protagonista",
                "names":{
                    "first": "Jim",
                    "last": "Parsons"
                }
            },
            {
                "_id": 61,
                "role": "Protagonista",
                "names": {
                    "first": "Johnny",
                    "last": "Galecki"
                }
            }
        ]
    },
    {
        "_id": 27,
        "TV_show": {
            "_id": 23,
            "title": "The Bing Bang Theory"
        },
        "title": "El efecto del pez luminoso",
        "category": "Episode",
        "description":"Sheldon es despedido de su trabajo como físico en " +
            "la Universidad cuando insulta a su nuevo jefe, " +
            "el Doctor Eric Gablehauser.",
        "duration": "00:30",
        "release_date":new Date("2007-10-01"),
        "season": 1,
        "year": "2007",
        "episode_number": 2,
        "producer": "Chuck Lorre Productions",
        "artists": [
            {
                "_id": 63,
                "role": "Protagonista",
                "names":{
                    "first": "Jim",
                    "last": "Parsons"
                }
            },
            {
                "_id": 61,
                "role": "Protagonista",
                "names": {
                    "first": "Johnny",
                    "last": "Galecki"
                }
            }
        ]
    },
    {
        "_id": 29,
        "TV_show": {
            "_id": 23,
            "title": "The Bing Bang Theory"
        },
        "title": "El corolario del gato con botas",
        "category": "Episode",
        "description": "Cuando Leonard ve a Penny besando a un hombre " +
            "enfrente de su apartamento, queda devastado pensando que " +
            "ella lo ha rechazado.",
        "duration":"00:30",
        "release_date": new Date("2007-10-08"),
        "season": 1,
        "year":"2007",
        "episode_number": 3,
        "producer": "Chuck Lorre Productions",
        "artists": [
            {
                "_id": 63,
                "role": "Protagonista",
                "names":{
                    "first": "Jim",
                    "last": "Parsons"
                }
            },
            {
                "_id": 61,
                "role": "Protagonista",
                "names": {
                    "first": "Johnny",
                    "last": "Galecki"
                }
            },
            {
                "_id": 39,
                "role": "Secundario",
                "names": {
                    "first": "Michael",
                    "last": "Huisman"
                }
            }
        ]
    },
    {
        "_id": 33,
        "TV_show": {
            "_id": 31,
            "title": "La maldición de Hill House" ,
        },
        "title": "Steven ve un fantasma",
        "category": "Episode",
        "description": "Mientras investiga con escepticismo una historia de" +
            " fantasmas para su próxima novela, Steven recibe una llamada de" +
            " la hermana que desata una serie de eventos trágicos.",
        "duration": "00:51",
        "release_date":new Date("2018-06-01"),
        "season": 1,
        "year": "2018",
        "episode_number": 1,
        "producer": "Netflix",
        "artists":[
            {
                "_id": 45,
                "role": "Protagonista",
                "names": {
                    "first": "Mckenna",
                    "last": "Grace"
                }
            },
            {
                "_id": 67,
                "role": "Protagonista",
                "names": {
                    "first": "Patty",
                    "last": "Jenkins"
                }
            },
            {
                "_id": 55,
                "role": "Secundario",
                "names":{
                    "first": "Tom",
                    "last": "Cruise"
                }
            },
            {
                "_id": 61,
                "role": "Secundario",
                "names": {
                    "first": "Johnny",
                    "last": "Galecki"
                }
            }
        ]
    },
    {
        "_id": 35,
        "TV_show": {
            "_id": 31,
            "title": "La maldición de Hill House" ,
        },
        "title": "Ataúd abierto",
        "category": "Episode",
        "description": "La devastadora tragedia revive los traumas de toda la" +
            "    familia. Shirley recuerda su primer roce con la muerte y " +
            "vuelve a sentir temores adormecidos por mucho tiempo.",
        "duration": "00:51",
        "release_date": new Date("2018-06-07"),
        "season": 1,
        "year": "2018",
        "episode_number": 2,
        "producer": "Netflix",
        "artists":[
            {
                "_id": 39,
                "role": "Protagonista",
                "names": {
                    "first": "Michael",
                    "last": "Huisman"
                }
            },
            {
                "_id": 67,
                "role": "Secundario",
                "names": {
                    "first": "Patty",
                    "last": "Jenkins"
                }
            },
            {
                "_id": 57,
                "role": "Secundario",
                "names":{
                    "first": "Kate",
                    "last": "Winslet"
                }
            }
        ]
    },
    {
        "_id": 37,
        "TV_show": {
            "_id": 31,
            "title": "La maldición de Hill House"
        },
        "title": "El toque",
        "category": "Episode",
        "description": "Theo percibe fuertes matices de sí misma en una " +
            "paciente con problemas, una chica perseguida por la imagen " +
            "de una sonrisa amenazante.",
        "duration": "00:51",
        "release_date": new Date("14-06-2018"),
        "season": 1,
        "year": "2018",
        "episode_number": 3,
        "producer": "Netflix",
        "artists": [
            {
                "_id": 57,
                "role": "Protagonista",
                "names":{
                    "first": "Kate",
                    "last": "Winslet"
                }
            },
            {
                "_id": 71,
                "role": "Protagonista",
                "names": {
                    "first": "Shawnee",
                    "last": "Smith"
                }
            },
            {
                "_id": 41,
                "role": "Secundario",
                "names": {
                    "first": "Carla",
                    "last": "Gugino"
                }
            },
            {
                "_id": 63,
                "role": "Secundario",
                "names": {
                    "first": "Jim",
                    "last": "Parsons"
                }
            }
        ]
    }]);
