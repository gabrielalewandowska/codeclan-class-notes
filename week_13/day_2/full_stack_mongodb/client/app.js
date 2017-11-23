var requestHelper = require("./helpers/request_helper.js");

window.addEventListener("DOMContentLoaded", function (){
  requestHelper.getRequest("http://localhost:3000/api/films", function(films){
    console.log(films);

    var mainDiv = document.getElementById("main");
    var list = document.createElement("ul");

    films.forEach(function (film){
      var listItem = document.createElement("li");
      listItem.innerText = film.title;
      list.appendChild(listItem);
    });
    mainDiv.appendChild(list);
  })
});
