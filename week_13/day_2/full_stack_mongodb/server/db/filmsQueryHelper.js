var MongoClient = require("mongodb").MongoClient;

var filmsQueryHelper = {
  url: "mongodb://localhost:27017/film_reviews_site",
  all: function(onQueryFinished) {
    console.log("filmsQueryHelper.all started");

    MongoClient.connect(this.url, function(err, db) {
        console.log("MongoClient.connect started");
        var filmsCollection = db.collection("films");

        filmsCollection.find().toArray(function (err, docs) {
          console.log(".find().toArray() callback start");
          console.log("calling onQueryFinished with docs");
          onQueryFinished(docs);
      });
    });
    return {some: "thing"};
  }
}

module.exports = filmsQueryHelper;
