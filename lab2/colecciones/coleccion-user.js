// The user collection contains documents relating to customers and employees.

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");
// drop users colection
db.user.drop();

db.user.insertMany([
    {
        "_id": 1,
        "category": "cliente",
        "names": {
            "first": "Pablo",
            "last": "Rosa"
        },
        "subscription": {
            "type": "Básico",
            "date": new Date ("2017-09-13")
        },
        "birthday": new Date("1990-09-03"),
        "gender": "Hombre",
        "email": "1@mail.com",
        "phone": 4526578,
        "username": "pablonico",
        "password": "1234567"
        },
        {
        "_id": 2,
        "category": "cliente",
        "names": {
            "first": "Jairo",
            "last": "Lopez"
        },
        "subscription": {
            "type": "Medium",
            "date": new Date ("2017-09-14"),
        },
        "birthday": new Date ("1990-01-01"),
        "gender": "Otro",
        "email": "2@mail.com",
        "phone": 4154528,
        "username": "jairo_kevin",
        "password": "11111"
    },
    {
        "_id": 3,
        "category": "cliente",
        "names": {
            "first": "Naira",
            "last": "Garibay"
        },
        "subscription": {
            "type": "Medium",
            "date": new Date ("2017-09-15"),
        },
        "birthday": new Date ("1996-10-13"),
        "gender": "Mujer",
        "email": "3@mail.com",
        "phone": 0303456,
        "username": "naigaribay",
        "password": "333a3e3"
    },
    {
        "_id": 4,
        "category": "cliente",
        "names": {
            "first": "Fernando",
            "last": "Rosales"
        },
        "subscription": {
            "type": "Premium",
            "date": new Date ("2017-09-16")
        },
        "birthday": new Date ("1991-03-04"),
        "gender": "Hombre",
        "email": "4@mail.com",
        "phone": 4654209,
        "username": "fer459",
        "password": "Hola4236899"
    },
    {
        "_id": 5,
        "category": "cliente",
        "names": {
            "first": "Paula",
            "last": "Abate"
        },
        "subscription": {
            "type": "Premium",
            "date": new Date ("2017-09-17"),
        },
        "birthday": new Date ("1988-07-06"),
        "gender": "Mujer",
        "email": "5@mail.com",
        "phone": 157325966,
        "username": "pau_lato",
        "password": "haso1203"
    },
    {
        "_id": 6,
        "category": "cliente",
        "names": {
            "first": "Josefina",
            "last": "Canedo"
        },
        "subscription": {
            "type": "Básico",
            "date": new Date ("2017-09-18"),
        },
        "birthday": new Date ("1988-08-28"),
        "gender": "Mujer",
        "email": "6@mail.com",
        "phone": 666555,
        "username": "josefaLa",
        "password": "bitch_45"
    },
    {
        "_id": 7,
        "category": "empleado",
        "names": {
            "first": "Alfredo",
            "last": "Kubin"
        },
        "email": "alfredk@gmail.com",
        "username": "alfredk",
        "password": "alfredk1234",
        "phone":[
            {
                "type": "móvil",
                "number": 15795349
            },
            {
                "type": "fijo",
                "number": 49548987
            }
        ],
        "role": "manager"
    },
    {
        "_id": 8,
        "category": "empleado",
        "names": {
            "first": "Eduardo",
            "last": "Gorey"
        },
        "email": "goreycat@gmail.com",
        "username": "gorey",
        "password": "gorey1234",
        "phone":[
            {
                "type": "fijo",
                "number": "15893473"
            }
        ],
        "role":"gerente"
    },
    {
        "_id": 9,
        "category": "empleado",
        "names": {
            "first": "Lee",
            "last": "Krasner"
        },
        "email": "leekrasner@gmail.com",
        "username": "leek",
        "password": "leek1234",
        "phone":[
            {
                "type": "móvil",
                "number": "15234879"
            }
        ],
        "role":"secretario"
    },
    {
        "_id": 10,
        "category": "empleado",
        "names": {
            "first": "Pablo",
            "last": "Picasso"
        },
        "email": "picasso@gmail.com",
        "username": "picasso",
        "password": "picasso1234",
        "phone":[
            {
                "type":"móvil",
                "number":"154632890"
            }
        ],
        "role":"director"
    }
]);
