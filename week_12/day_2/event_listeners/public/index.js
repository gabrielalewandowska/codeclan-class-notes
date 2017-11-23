var app = function(){
  var counter = 0;
  var handleButtonClick = function(){
    counter += 1;
    var pTag = document.querySelector("#button-result");
    if (counter === 1){
      pTag.innerText = "This button has been clicked 1 time."
    } else {
    pTag.innerText = "This button has been clicked " + counter +" times."
  }
  }

  var handleKeyPress = function(){
    var pTag = document.querySelector("#text-result");
    pTag.innerText = this.value;
  }

  var handleChange = function(){
    var selectResult = document.getElementById("select-result");
    selectResult.innerText = "Hi, " + this.value;
  }

  var button = document.querySelector("button");
  button.addEventListener("click", handleButtonClick);

  var input = document.querySelector("input");
  input.addEventListener("keyup", handleKeyPress);

  var select = document.querySelector("select");
  select.addEventListener("change", handleChange);
}

window.addEventListener('load', app);
