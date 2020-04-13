// Given a movie, calculate its average rating.
// The selected movie is 'Titanic'.

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");

db.review.aggregate([ {
    $lookup: {
        from: "content",
        localField: "content_id",
        foreignField: "_id",
        as: "contentInfo"
    }
},  {
    $match: {
        "contentInfo.title": "Titanic"
    }
},  {
    $group: {
        "_id": null,
        "average_rating": {
            "$avg": "$rating"
        }
    }
},  {
    $project: {
        "_id": 0,
        "average_rating": 1
    }
} ]).pretty();