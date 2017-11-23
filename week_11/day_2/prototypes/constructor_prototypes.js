var Fish = function (name, colour) {
  this.name = name;
  this.colour = colour;
}

Fish.prototype.swim = function (){
  console.log("splash");
};

Fish.prototype.eat = function (){
  console.log("yummy");
}

var nemo = new Fish("Nemo", "orange");
nemo.swim();
console.log(nemo);

console.log("fish prototype: ", Object.getPrototypeOf(nemo))
