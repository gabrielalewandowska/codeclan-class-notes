// function add(a, b){
//   console.log(this);
//   this.myNumber = 20;
//   return a + b;
//
// }
//
// add(5, 3);
// console.log(global.myNumber);


// var car = {
//   speed: 0,
//   accelerate: function(){
//     console.log(this);
//     this.speed += 10;
//   },
//   decelerate: function(){
//     this.speed -= 10;
//   }
// }
//
// car.accelerate();

function Animal(type, legs) {
  this.type = type;
  this.legs = legs;
  this.logInfo = function(){
    console.log(this === myCat);
    console.log("The " + this.type + " has " + this.legs + " legs");
  }
}

var myCat = new Animal("Cat", 4);
myCat.logInfo();

setTimeout(myCat.logInfo.bind(myCat), 1000);
