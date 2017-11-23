var express = require("express");
var app = express();
var getAllFlowers = require("./db.js");

app.get("/api/flowers", function(err, res){
  getAllFlowers(function(flowers){
    res.json(flowers);
  });
});

app.listen(3000, function (){
  console.log("server running");
});
