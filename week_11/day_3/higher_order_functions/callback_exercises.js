// 1. Write a function, functionCaller, that takes a function (myCallback) and a number as parameters.
// The functionCaller returns myCallback called with the number (as an argument).

function functionCaller(myCallbackFunction, number){
return myCallbackFunction(number);
}

// 2. Maths Fun: Write two functions increment and square. increment should take in a number and return the number plus 1. square should take in a number and return it multiplied by itself.

var increment = function(number){
  return number + 1;
}

var square = function(number){
  return number * number;
}

// 3. Write another function called doSomeMathsForMe that takes in a number (n) and a function (a callback) and executes the callback, passing in n as an argument.

var doSomeMathsForMe = function (number, callbackFunction){
  console.log(callbackFunction(number));
}
// 4. Invoke doSomeMathsForMe by passing it a number and the increment and/or square function.

doSomeMathsForMe(5, increment);
doSomeMathsForMe(5, square);
