var app = function(){
  var canvas = document.getElementById("main-canvas");
  var context = canvas.getContext("2d");

  context.fillStyle = "hotpink";
  context.fillRect(10, 10, 50, 50);

  context.beginPath();
  context.moveTo(100, 100);
  context.lineTo(100, 200);
  context.stroke();

  context.beginPath();
  context.moveTo(200, 200);
  context.lineTo(200, 300);
  context.lineTo(100, 300);
  context.closePath();
  context.stroke();

  context.beginPath();
  context.arc(400, 300, 50, 0, Math.PI * 2, true);
  context.moveTo(110, 75);
  context.fill();


  var img = document.createElement("img");
  img.src = "http://emojis.slackmojis.com/emojis/images/1457563042/312/doge.png";

  var drawDoge = function() {
    context.drawImage(img, 400, 400, 90, 90);
  }

  img.addEventListener("load", drawDoge);

  var changeColour = function(){
    context.strokeStyle = this.value;
  }

  var colourPicker = document.getElementById("input-colour");
  colourPicker.addEventListener("change", changeColour);

  var drawCircle = function(x, y){
    context.beginPath();
    context.arc(x, y, 40, 0, Math.PI * 2, true);
    context.stroke();
  }

  canvas.addEventListener("click", function(event){
    // console.log("clicked", event);
    drawCircle(event.x, event.y);
  })
}

window.addEventListener("load", app);
