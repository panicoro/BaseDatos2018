// List the actors who have acted in films that belong to
// genres of drama or comedy, arranged in alphabetical order.

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");

db.content.aggregate([ {
    $unwind:
        "$artists"
},  {
    $match: {
        category: "Movie",
        genres: {
            $in: [ "Comedia", "Drama" ]
        },
        "artists.role": {$ne: "Director"}
    }
},  {
    $group: {
        _id: "$artists._id",
        names: {
            $addToSet: "$artists.names"
        }
    }
},  {
    $sort: {
        "names.first": 1,
        "names.last": 1
    }
}]);
