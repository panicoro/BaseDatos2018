// PARA CONTENIDO
// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");
// drop users colection
db.content.drop();

// PARA REVIEW
db = db.getSiblingDB("admin");
db.auth("mongoadmin", "chacho");
db.review.drop();

// PARA USER
// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");
// drop users colection
db.user.drop();

// PARA ARTIST
// use admin
db = db.getSiblingDB('admin');
// authenticate
db.auth("mongoadmin", "chacho");
// drop users colection
db.artists.drop();


