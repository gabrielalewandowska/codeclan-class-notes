class Cow {
  constructor(name){
    this.name = name;
  }

  moo(){
    return "moo";
  }
}

var cow = new Cow();
console.log(cow.moo());


// VARIABLE DECLARATIONS

var myMoney = 20;

if (myMoney > 10){
  let taxHaven = myMoney * myMoney;  // CONST and LET are block-scoped, you can't change CONST
  taxHaven = taxHaven + 100
}

const person = {name: "John"}
person.name = "Alex"; // that will work
person = {} // that won't work


// setting defautls
var showMood = function(name="Darren", mood="sad"){
  console.log(name, "is", mood);
}

showMood("Jarrod");
showMood("Jarrod", "grumpy");
showMood();

class Calculator {
  constructor() {
    this.number = [1, 2, 3];
    this.total = 0;
  }

  setTotal(){
    this.numbers.forEach(function(number){
      this.total += number;
    }.bind(this))
  }


// ES6

setTotal(){
  this.numbers.forEach(number => { //arrow function, can remove brackets around number bc it's only 1 thing
    this.total += number;
    })
  }

//ES6
  doubleAll(){
    this.numbers = this.numbers.map(number => number * 2);
  }
}
const calculator = new Calculator();

calculator.setTotal();

///
class Class1 {

}

class Class2 {

}

class Class3 {

}

export default Class1;
export {Class2, Class3};

// new file

import Class1, {Class2, Class3} from "./mylib.jsx"



/// STRING INTERPOLATION
const name = "David";
const output = "Hello " + name;
console.log(`Hello ${name}`);

///SPREAD OPERATOR

const arr1 = [0, 1, 2];
const arr2 = [3, 4, 5];

arr1.push(...arr2);
console.log(arr1)

///REST OPERATOR

function sum(one, ...args){
  return a + b;
}

console.log(sum(2, 3, 7));

///

let a, b;
[a, b ] = [1, 2];

console.log(a, b);

///

const obj = {first: "Jane", last: "Doe"};
const {first: f, last: l} = obj;
console.log(f, l);

///

const blah = function({name, age}){
  console.log(name, age)
}

const person = {name: "Alex", age: 37}
blah(person);
