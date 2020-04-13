//List the amount of movies by genre in descending order.
// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");

db.content.aggregate([ {
    $match: {
        category: "Movie"
    }
},  {
    $unwind: "$genres"
},  {
    $group: {
        _id: "$genres",
        ids_movies: {
            $addToSet: "$_id"
        },
        number_movies: {
            $sum: 1
        }
    }
},  {
    $project: {
        _id: 0,
        genre_movie: "$_id",
        number_movies: "$number_movies",
        ids_movies: "$ids_movies"
    }
},  {
    $sort: {
        number_movies:-1
    }
} ]).pretty();