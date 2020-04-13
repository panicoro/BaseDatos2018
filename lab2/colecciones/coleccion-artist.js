// The artist collection contains documents relating to the actors and
// content directors.

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");
// drop users colection
db.artists.drop();

db.artist.insertMany([
    {
        "_id": 39,
        "names": {
            "first": "Michael",
            "last": "Huisman"
        },
        "birthday": new Date("18-07-1981"),
        "gender": "Masculino",
        "website": "www.michielhuisman.com"
    },
    {
        "_id": 41,
        "names": {
            "first": "Carla",
            "last": "Gugino"
        },
        "birthday":new Date("29-02-1971"),
        "gender": "Femenino",
        "website": "www.CarlaGugino.com"
    },
    {
        "_id": 43,
        "names": {
            "first": "Timothy",
            "last": "Hutton"
        },
        "birthday": new Date("16-06-1960"),
        "gender": "Masculino",
        "website": "www.TimothyHutton.com"
    },
    {
        "_id": 45,
        "names": {
            "first": "Mckenna",
            "last": "Grace"
        },
        "birthday": new Date("26-06-2006"),
        "gender": "Femenino",
        "website": "www.MckennaGrace.com"
    },
    {
        "_id": 47,
        "names": {
            "first": "Leonardo",
            "last": "Dicaprio"
        },
        "birthday": new Date("11-11-1974"),
        "gender": "Masculino",
        "website": "wwww.leonardiodicaprio.com"
    },
    {
        "_id": 49,
        "names": {
            "first": "Matt",
            "last": "Damon"
        },
        "birthday": new Date("19-10-1970"),
        "gender": "Masculino",
        "website": "www.MattDamon.com"
    },
    {
        "_id": 51,
        "names": {
            "first": "Johnny",
            "last": "Deep"
        },
        "birthday": new Date("01-05-1963"),
        "gender": "Masculino",
        "website": "www.johnnydeep.com"
    },
    {
        "_id": 53,
        "names": {
            "first": "Brad",
            "last": "Pitt"
        },
        "birthday": new Date("19-12-1963"),
        "gender": "Masculino",
        "website": "www.bradpitt.com"
    },
    {
        "_id": 55,
        "names":{
            "first": "Tom",
            "last": "Cruise"
        },
        "birthday": new Date("07-03-1962"),
        "gender": "Masculino",
        "website": "wwww.tomcruise.com"
    },
    {
        "_id": 57,
        "names":{
            "first": "Kate",
            "last": "Winslet"
        },
        "birthday": new Date("10-05-1975"),
        "gender": "Femenino",
        "website": "www.KateWinslat.com"
    },
    {
        "_id": 59,
        "names": {
            "first": "James",
            "last": "Cameron"
        },
        "birthday": new Date("16-11-1954"),
        "gender": "Masculino",
        "website": "www.jamescameron.com"
    },
    {
        "_id": 61,
        "names": {
            "first": "Johnny",
            "last": "Galecki"
        },
        "birthday": new Date("30-04-1975"),
        "gender": "Masculino",
        "website": "www.johnnygalecki.com"
    },
    {
        "_id": 63,
        "names":{
            "first": "Jim",
            "last": "Parsons"
        },
        "birthday": new Date("24-03-1973"),
        "gender": "Masculino",
        "website": "www.jimparsons.com"
    },
    {
        "_id": 65,
        "names": {
            "first": "Amy",
            "last": "Schumer"
        },
        "birthday": new Date("01-06-1981"),
        "gender": "Femenino",
        "website": "www.amyschumer.com"
    },
    {
        "_id": 67,
        "names": {
            "first": "Patty",
            "last": "Jenkins"
        },
        "birthday": new Date("23-07-1971"),
        "gender": "Femenino",
        "website": "www.pattyjenkins.com"
    },
    {
        "_id": 69,
        "names":{
            "first": "Elena",
            "last": "Anya"
        },
        "birthday": new Date("17-07-1975"),
        "gender": "Femenino",
        "website": "www.elenaanaya.com"

    },
    {
        "_id": 71,
        "names": {
            "first": "Shawnee",
            "last": "Smith"
        },
        "birthday": new Date("03-07-1969"),
        "gender": "Femenino",
        "website": "www.shawneesmith.com"
    },
    {
        "_id": 73,
        "names": {
            "first": "Danny",
            "last": "Boyle"
        },
        "birthday": new Date("1956-10-20"),
        "gender": "Masculino"
    },
    {
        "_id": 72,
        "names": {
            "first": "Danny",
            "last": "Boyle"
        },
        "birthday": new Date("1956-10-20"),
        "gender": "Masculino"
    },
    {
        "_id": 1,
        "names": {
            "first": "Michael",
            "last": "Bay"
        },
        "birthday": new Date("1958-05-14"),
        "gender": "Masculino"
    },
    {
        "_id": 2,
        "names": {
            "first": "Sylwia",
            "last": "Kubus"
        },
        "birthday": new Date("1966-01-23"),
        "gender": "Femenino"
    },
    {
        "_id": 3,
        "names": {
            "first": "Randall",
            "last": "Wallace"
        },
        "birthday": new Date("1949-07-28"),
        "gender": "Masculino"
    },
    {
        "_id": 4,
        "names": {
            "first": "Lasse",
            "last": "Halström"
        },
        "birthday": new Date("1946-06-02"),
        "gender": "Masculino"
    },
    {
        "_id": 5,
        "names": {
            "first": "Sofia",
            "last": "Coppola"
        },
        "birthday": new Date("1962-03-12"),
        "gender": "Femenino"
    },
    {
        "_id": 6,
        "names": {
            "first": "Claire",
            "last": "Denis"
        },
        "birthday": new Date("1976-10-18"),
        "gender": "Femenino"
    },
    {
        "_id": 7,
        "names": {
            "first": "Carla",
            "last": "Simón"
        },
        "birthday": new Date("1980-04-23"),
        "gender": "Femenino"
    }
]);

