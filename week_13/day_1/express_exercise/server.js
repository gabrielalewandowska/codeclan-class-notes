var express = require("express");
var app = express();

app.get("/", function(req, res){
    res.sendFile(__dirname + "/index.html");
});

app.get("/data", function(req, res){
    res.json({name: "Saturn", size: 90876});
});

app.listen(3002, function(){
    console.log("App running on port 3002");
});