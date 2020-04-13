// List the films directed by two or more female directors.

db.content.aggregate([ {
    $unwind: "$artists"
},  {
    $lookup: {
        from: "artist",
        localField: "artists._id",
        foreignField: "_id",
        as: "information"
    }
},  {
    $match: {
        "artists.role": "Director",
        "information.gender": "Femenino"
    }
},  {
    $group: {
        _id: "$_id",
        title: {
            $addToSet: "$title"
        },
        femaleDirectors: {
            $sum: 1
        }
    }
},  {
    $match: {
        femaleDirectors: {
            $gte: 2
        }
    }
} ]);
