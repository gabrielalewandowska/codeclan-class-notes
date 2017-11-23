console.log("first log");

var app = function(){
  var tag = document.getElementById("intro");
  tag.innerHTML = "Whatever!";
  console.log("second log");
}

window.onload = app;
