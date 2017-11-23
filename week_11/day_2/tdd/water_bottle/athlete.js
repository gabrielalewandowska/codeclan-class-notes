var Athlete = function(){
  this.hydration = 100;
  this.distanceCovered = 0;
}

Athlete.prototype.run = function(){
  if (this.hydration > 10) {
    this.hydration = this.hydration - 10;
    this.distanceCovered = this.distanceCovered + 10;
  } else {
    console.log("I need a drink!");
  }
}

Athlete.prototype.drink = function(waterBottle){
  this.hydration = 100;
  waterBottle.empty();
}

module.exports = Athlete;
