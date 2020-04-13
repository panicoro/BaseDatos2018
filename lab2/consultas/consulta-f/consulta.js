// Given a movie "Titanic", calculate for each star the percentage of
// ratings received in their reviews

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");

db.content.aggregate([ {
    $match: {
        category: "Movie",
        title: "Titanic"
    }
},  {
    $lookup: {
        from: "review",
        localField: "_id",
        foreignField: "content_id",
        as: "result"
    }
},  {
    $addFields: {
        total_reviews: {
            $size: "$result"
        }
    }
},  {
    $unwind: "$result"
}, {
    $group: {
        _id: "$result.rating",
        percentage: {
            $sum: {
                $divide: [{
                    $multiply: [{
                        $sum: 1
                    }, 100]
                }, "$total_reviews"]
            }
        }
    }
},  {
    $project:  {
        _id:0,
        "star": "$_id",
        percentage: 1
    }
} ]).pretty();
