// List the reviews made by a customer "Naira Garibay" within a range of dates

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");

db.user.aggregate([ {
    $match: {
        "names.first": "Naira",
        "names.last": "Garibay"
    }
},  {
    $lookup: {
        from: "review",
        localField: "_id",
        foreignField: "client_id",
        as: "result"
    }
},  {
    $unwind: "$result"
},  {
    $match: {
        $and: [ {
            "result.review_date": {
                $gte: ISODate("2018-09-01T00:00:00Z")
            }
        }, {
            "result.review_date": {
                $lte: ISODate("2018-09-30T00:00:00Z")
            }
        } ]
    }
},  {
    $project: {
        _id: 0,
        result: 1
    }
} ]).pretty();

