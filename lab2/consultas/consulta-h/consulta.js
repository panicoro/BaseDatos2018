// List the best rated movies in the last 6 months. Use the
// "Average mark"

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");


db.content.aggregate([{
    $lookup: {
        "from": "review",
        "localField": "_id",
        "foreignField": "content_id",
        "as": "result"
    }
},  {
    $unwind: "$result"
},  {
    $match: {
        category: "Movie",
        "result.review_date": {
            $gte: new Date(new Date().getTime() - 180 * 24 * 60 * 6e4),
            $lte: new Date()
        }
    }
},  {
    $group: {
        _id: "$_id",
        title: {
            $addToSet: "$title"
        },
        average_rating: {
            $avg: "$result.rating"
        }
    }
},  {
    $sort: {
        average_rating:-1
    }
} ]);
