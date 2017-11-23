# ES6 

### Requirements
- Example folder

### Objectives
- Demonstrate us of new syntax:
  - classes
  - const and let
  - default parameters
  - arrow functions
  - import / export
  - destructuring
  - template literals
  - spread / rest operator

## Lesson structure:

Intro: What is ES2015 (ES6)

## What is ES2015?

ES2015 is a significant update to the language, and the first major update to the language since ES5 was standardized in 2009. 

There was a lot of hype and anticipation for ES2015 but in essence it is just introducing language improvements with a coupl of new features. It is expected now that the JS language will increment in smaller sets of features on an annual basis. ES2016 ( ES7 ) only has two new features.

## New Syntax

There is a host of new features available in ES2015 which is important to familiarise yourself with as much documentation is now written in the new syntax.

### Classes

ES6 has introduced the concept of classes. This is just suger coating over prototypes but it allows for much cleaner syntax and allows developers from other languages to jump into js faster.

So if we do a simple example of a Cow that goes moo:

```js
var Cow = function(name){
  this.name = name;
}

Cow.prototype.moo = function(){
  return "moo";
}

var cow = new Cow();
console.log(cow.moo());
```

The same file as a class in ES6 would look like this:

```js
class Cow{
  constructor(name){
    this.name = name;
  }

  moo(){
    return "moo";
  }
}

var cow = new Cow();
console.log(cow.moo());
```

See? Now we can keep everything in a tidier way where everything a cow needs is within those curely braces. Less typing = win.

### Const and let

`var` declarations are something we are very familiar with:

```js
var myMoney = 10
myMoney = 9
console.log( myMoney )
```

We can see we can reassign the variable and JS has no problem with it. Useful, but potentially dangerous. Consider:

```js
var myMoney = 20

if ( myMoney > 10 ) {
	var taxHaven = myMoney * myMoney
}

console.log( taxHaven )
```

What will the log display? This means that a `var` is function scoped. In the above example we can imagine in a big set of scripts the potential to shadow `taxHaven` variable is possible. Let's change the var to const:

```js
const myMoney = 20

if ( myMoney > 10 ) {
  const taxHaven = myMoney * myMoney
}

console.log( myMoney )
console.log( taxHaven )
```

Now it throws an error. A `const` is block scoped meaning `taxHaven` is only available inside the `if` statement squigglies.

Our tax haven is yielding even more funds. Let's reassign it and add on 100 bucks:

```js
const myMoney = 20

if ( myMoney > 10 ) {
  const taxHaven = myMoney * myMoney
  taxHaven = taxHaven + 100
}
```

This will throw an error `Assignment to constant variable.` - a `const` declaration can't be reassigned. Enter `let`:

```js
const myMoney = 20

if ( myMoney > 10 ) {
  let taxHaven = myMoney * myMoney
  taxHaven = taxHaven + 100
  console.log( taxHaven )
}
```

`let` is a declaration that allows reassignment. And like const, it is block scoped, if we move the `taxHaven` variable out the if block, we get a not defined error.

As a rule of thumb, use `const` unless you need to use `let` 

`const` doesn't allow reassignment, but that does not mean we can't change the properties of an object, or the contents of an array. So these are both valid -

```js
const person = {name: "John"};
person.name = "Alex";

const lotteryNumbers = [1,2,3,4,5,6];
lotteryNumbers[0] = 42;
```


### Default parameters

Default parameters is another thing ES6 does to make development easier.

Lets say I have a function that excepts a first name and that persons mood, but I want it to equal a default value if nothing was passed into it. 

```js
var showMood = function(name, mood){
  var name = name || "Darren";
  var mood = mood || "sad that you passed in nothing for mood";
  console.log(name,"is", mood)
}

showMood("Jarrod");
showMood("Jarrod", "grumpy");
showMood();
```

Doesn't look too nice but it gets the job done. In ES6, we can now set default params in the method params. So it will now look like this:

```js
var showMood = function(name="Darren", mood="sad that you passed in nothing for mood"){
  console.log(name,"is", mood)
}

showMood("Jarrod");
showMood("Jarrod", "grumpy");
showMood(); 
```

Lots better.


### Arrow functions

Lets take an example issue you have all had at one point in your projects - binding 

```js
class Calculator {
  constructor() {
    this.numbers = [1, 2, 3];
    this.total = 0;
  }

  setTotal() {
    this.numbers.forEach(function(number){
      this.total += number;
    })
  }

```

Looks like this.total is undefined. We will need to add a bind.

```js
setTotal() {
  this.numbers.forEach(function(number){
    this.total += number;
  }.bind(this))
}
```

But ES6 arrow function will automatically bind to the this that its called from. . So now we can write:

```js
setTotal() {
  this.numbers.forEach((number) => { 
    this.total += number;
  })
}
```
In fact we can simplify this even more, when the function take in one value we can lose the circle bracket 

```js
/* DROP BRACKETS */
  this.numbers.forEach( number =>
```
And if we have one statement we can lose angle bracket, *and* get implicit return -

```js
/* ADD NEW METHOD */
doubleAll(){
  this.numbers = this.numbers.map( number => number * 2 )
}
```

### Import / Export

In ES6, imports / exports are another way to well..import export stuff. Much like `module.exports` in ES5, but with the added bonus that we can export / import specifed chunks of code rather than having to import everything and then break down into what we need **after** the import - thus bringing in code we will never use.

*Note. Import/Export is not currently supported in NodeJS.*

If we had multiple exports per file, we could destructure them into objects. For example if i had a file called mylib.jsx;

```js
 class Class1 {

 }
 
 class Class2 {

 }

 class Class3 {

 }

 export default Class1;
 export {Class2, Class3};
```

To import them we can just type

```js
 import Class1, {Class2, Class3} from './mylib.jsx'
```

Why is Class1 outside of the curley braces? It's because it was default export so think of it as the main class of the file. 

### Template literals

String concatenation in JS has never been that pretty. How many ways can we concatenate in JS?

```js
"hello".concat( " world" )
"hello" + " world"
```

Both of these solutions are perfectly valid and will work but they can get quite messy. Here's an example:

```js
const presenters = [ "Jeremy C", "Richard H", "James M" ]

function presentersToString( presenterA, presenterB, presenterC ) {
  return "A car show presented by " + presenterA + ", " + presenterB + " and " + presenterC
}

const result = presentersToString( presenters[0], presenters[1], presenters[2] )
console.log( result )

```
 
The `return` String is a bit messy. So, instead of using + and either of "(double) or '(single) quotes we can use backticks `, for example:

```js
return `A car show presented by `
```

This will still run and work no problem. More powerfully though we can add placeholders, just like Ruby String Interpolation with a `${ expressions }`, for example:

```js
return `A car show presented by ${ 2 + 1 }`
```

Any JS can be added to this. Including the use of local variables:

```js
return `A car show presented by ${ presenterA }, ${ presenterB } and ${ presenterC }`

```
Here this passes the values of our variables and deals with the concatenation for us.

### Spread Operator

So we've tidied up our function but as well as the string concatenation, our passing of arguments is a bit awkward.

With some new syntax, we can clean this up and make it a lot neater. We can change the invocation to:

```js
const result = presentersToString( ...presenters )
console.log( result )
```

using the `...presenters` spreads all the element in the array as arguments. A few uses in `node` repl:

```js
	const arr1 = [0, 1, 2];
	const arr2 = [3, 4, 5];
	arr1.push(...arr2);
	=> [0,1,2,3,4,5]
```

> clear the script

### Rest operator

Let's look at similar syntax for the opposite operation. When we want gather a collection of variables into an array. It's really useful when we are unsure of the volume of arguments coming into our function. For example:

```js
function sum(a, b) {
  return a + b
}

console.log( sum( 2, 3, 7 ) )
```

JS is pretty chilled at this scenario. It will return 5 when we run it even though we passed in a 7. For our sum function to work we would need to knoe the exact number of arguments and sum them together. Or:

```js
function sum(...args) {
  return args
}

console.log( sum( 2, 3, 7 ) )
```

It's an array! Woohoo. Why is it call rest? Because one way we can us it is to gather the *rest* of the parameters given to a function -

```js
function sum(one, ...args){
  console.log(one); // 2
  console.log(args); // [3, 7]
}

sum( 2, 3, 7 ) 

```

### Destructuring

This allows us to take data from arrays and objects and pass them to distinct variables:

```js
let a, b;
[a, b] = [1, 2];

console.log( a )
console.log( b )
```

We can also deconstruct variables from objects.

```js
const obj = {first: 'Jane', last: 'doe'};
const {first: f, last: l} = obj;

console.log(f,l);
```

We can use it in functions -

```js
const blah = function({name, age}){
  console.log(name, age);
}

const person = {name: "Alex", age: 37};
blah(person);
```














