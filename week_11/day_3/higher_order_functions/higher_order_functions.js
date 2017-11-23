// setTimeout(function(){
//   console.log("I've waited for 1 second");
// }, 1000);


var logJaguar = function(message){
  console.log(message);
}

var logNotJaguar = function(){
  console.log("No jaguar here");
}

var jaguarChecker = function(animal, message, isJaguar, isNotJaguar){
  if(animal === "jaguar"){
    isJaguar(message);
  } else {
    isNotJaguar();
  }
}

jaguarChecker("jaguar", "Hallo", logJaguar, logNotJaguar);
