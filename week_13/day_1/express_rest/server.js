var express = require("express");
var app = express();

var bodyParser = require("body-parser");

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

var catRouter = require("./cats_controller.js");

app.get("/", function(req, res){
    res.json({data: "Welcome!"});
});

app.use("/cats", catRouter);

app.listen(3200, function(){
    console.log("Server running on port " + this.address().port);
});

