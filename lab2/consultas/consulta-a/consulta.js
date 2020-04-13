// List the clients subscribed to the PREMIUM plan in a certain range
// of dates [2017-09-14;2017-09-17].

// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");

db.user.find({
    category: "cliente",
    $and: [ {
        "subscription.date": {
            $gte: ISODate("2017-09-14T00:00:00Z")
        }
    },  {
        "subscription.date": {
            $lte: ISODate("2017-09-17T00:00:00Z")
        }
    } ],
    "subscription.type": "Premium"
},  {
    "names.first": 1,
    "names.last": 1,
    "subscription.type": 1,
    "subscription.date": 1
}).pretty();