var MongoClient = require("mongodb").MongoClient;

var getAllFlowers = function (takeThisData){
  MongoClient.connect("mongodb://localhost:27017/garden", function (err, db){
    db.collection("flowers").find().toArray(function(err, docs){
      console.log("docd: ", docs);
      takeThisData(docs);
    });
  });
}

// module.exports = {
//   getAllFlowers: getAllFlowers,
//   favNumber: 5
// }

module.exports = getAllFlowers;
