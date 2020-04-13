// List the actors who have acted in ALL the programs of
// television where an actor "Jim Parsons" performed.

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");


tv_shows_with_x = db.content.aggregate([ {
    $unwind: "$artists"
}, {
    $match: {
        category: "Episode",
        "artists.names.first": {
            $eq: "Jim"
        },
        "artists.names.last": {
            $eq: "Parsons"
        },
        "artists.role": {
            $ne: "Director"
        }
    }
},  {
    $group: {
        _id: "$artists._id",
        tv_shows: {
            $addToSet: "$TV_show._id"
        }
    }
} ]).toArray()[0].tv_shows;

db.content.aggregate([ {
    $unwind: "$artists"
},  {
    $match: {
        category: "Episode",
        "artists.names.first": {
            $ne: "Jim"
        },
        "artists.names.last": {
            $ne: "Parsons"
        },
        "artists.role": {
            $ne: "Director"
        }
    }
},  {
    $group: {
        _id: "$artists._id",
        names: {
            $addToSet: "$artists.names"
        },
        tv_shows: {
            $addToSet: "$TV_show._id"
        }
    }
},  {
    $addFields: {
        otherIsSubset: {
            $setIsSubset: [tv_shows_with_x, "$tv_shows"]
        }
    }
},  {
    $match: {
        otherIsSubset: {$eq: true}
    }
},  {
    $project: {
        otherIsSubset: 0,
        tv_shows: 0
    }
} ]);