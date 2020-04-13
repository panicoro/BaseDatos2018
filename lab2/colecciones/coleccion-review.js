// The review collection contains documents about the reviews made by
// customers about the content

db = db.getSiblingDB("admin");
db.auth("mongoadmin", "chacho");
db.review.drop();

db.review.insertMany([
    {
        "_id": 1,
        "content_id": 9,
        "client_id": 1,
        "title": "Muy buen programa",
        "description": "Excelente producción. " +
            "Lo recomendaré a mis conocidos",
        "rating": 5,
        "review_date": new Date ("2018-10-01")
    },
    {
        "_id": 2,
        "content_id": 9,
        "client_id": 3,
        "title": "Repite temas",
        "description": "Al principio era bueno. " +
        "Ahora no me atre",
        "rating": 3,
        "review_date": new Date ("2018-09-10")
    },
    {
        "_id": 3,
        "content_id": 9,
        "client_id": 5,
        "title": "Me impresiona",
        "description": "No se que decir, " +
            "así que no dire nada",
        "rating": 1,
        "review_date": new Date ("2018-10-21")
    },
    {
        "_id": 4,
        "content_id": 23,
        "client_id": 2,
        "title": "Muy buena serie",
        "description": "No hay otra como ella. Inigualable",
        "rating": 5,
        "review_date": new Date ("2018-09-05")
    },
    {
        "_id": 5,
        "content_id": 23,
        "client_id": 6,
        "title": "Que nunca termine",
        "description": "No sé que haremos cuando termine esta serie",
        "rating": 4,
        "review_date": new Date ("2018-10-10")
    },
    {
        "_id": 6,
        "content_id": 1,
        "client_id": 5,
        "title": "Muy buena película",
        "description": "Excelente producción. " +
            "Lo recomendaré a mis conocidos",
        "rating": 5,
        "review_date": new Date ("2018-08-06")
    },
    {
        "_id": 7,
        "content_id": 1,
        "client_id": 3,
        "title": "Me aburrió",
        "description": "Me parece pasada de moda",
        "rating": 2,
        "review_date": new Date ("2018-09-13")
    },
    {
        "_id": 8,
        "content_id": 1,
        "client_id": 6,
        "title": "Muy buena película",
        "description": "Excelente producción. " +
            "Lo recomendaré a mis conocidos",
        "rating": 4,
        "review_date": new Date ("2018-08-06")
    },
    {
        "_id": 9,
        "content_id": 1,
        "client_id": 1,
        "title": "Me aburrió",
        "description": "Me parece pasada de moda",
        "rating": 1,
        "review_date": new Date ("2018-09-13")
    },
    {
        "_id": 10,
        "content_id": 4,
        "client_id": 5,
        "title": "Me impresiona",
        "description": "Muy recomendable " +
            "la mejor en su género",
        "rating": 4,
        "review_date": new Date ("2018-10-20")
    },
    {
        "_id": 11,
        "content_id": 6,
        "client_id": 3,
        "title": "Horrible película",
        "description": "En qué estaban pensando cuando la hicieron, " +
            "me decepcionó totalmente",
        "rating": 1,
        "review_date": new Date ("2018-07-24")
    },
    {
        "_id": 12,
        "content_id": 4,
        "client_id": 6,
        "title": "Aburrida",
        "description": "Malísima, un desperdicio de tiempo",
        "rating": 2,
        "review_date": new Date ("2018-10-07")
    }
]);

