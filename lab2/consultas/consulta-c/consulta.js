// List the episodes corresponding to the television program "Black Mirror"
// and the season number 1. List sorted by launch date.

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");

db.content.aggregate([ {
    $match: {
        "TV_show.title": "Black Mirror",
        "season": 1
    }
},  {
    $sort: {
        "release_date": 1
    }
},  {
    $project: {
        "title": 1,
        "release_date": 1,
        "_id": 0
    }
}]).pretty();