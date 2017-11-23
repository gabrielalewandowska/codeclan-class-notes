var filmsQueryHelper = require("../db/filmsQueryHelper.js");
var express = require("express");
var filmsRouter = express.Router();

filmsRouter.get("/", function(req, res) {
  console.log(Date.now(), "/api/films route hit");

  filmsQueryHelper.all(function (films){
      console.log("filmsQueryHelper.all callback hit");
      res.json(films);
  });
});

module.exports = filmsRouter;
