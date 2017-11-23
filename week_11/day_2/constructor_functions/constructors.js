var myObject = {};
var anotherObject = new Object();

var person1 = {
  name: "Zsolt",
  height: "magnificiently tall",

}

var person2 = {
  name: "Craig",
  height: "just kinda tall"
}

var Person = function (name, height) {
  this.name = name;
  this.height = height;
  this.talk = function (){
    console.log("Hi, I'm " + this.name);
  }
}

var person3 = new Person("Zsolt", 190);
var person4 = new Person("Craig", 180);

console.log(person3);

var brokenPerson = new Person("Craig");

console.log(brokenPerson);

person3.talk();
