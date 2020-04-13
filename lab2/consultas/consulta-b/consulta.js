//List the data of the films where the 'X' actor was the protagonist.

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");

db.content.aggregate([ {
    $match: {
        category: "Movie",
        artists: {
            $elemMatch: {
                "names.first": "Amy",
                "names.last": "Schumer",
                "role": "Protagonista"
            }
        }
    }
} ]).pretty();
