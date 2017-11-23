var numbers = [1, 2, 3, 4, 5];

// for (var number of numbers) {
//   console.log("the number is: " + number);
// }

// numbers.forEach(function(number){
//   console.log("the number is " + number);
// });

var printNumber = function (number) {
  console.log("the number is " + number);
}
// printNumber(4);
//
// numbers.forEach(printNumber);

var ourForEach = function (array, callbackFunction) {
  for (var item of array) {
    callbackFunction(item);
  }
}

ourForEach(numbers, printNumber);

var object = {
  a: 1,
  b: 2,
  c: 3
}

var keys = Object.keys(object);
console.log(keys);
keys.forEach(function(key){
  console.log("key:" + key);
  console.log("value: " + object[key]);
})


var myNumbers = [11, 23, 1, 45, 16, 22, 14, 37, 5];
var numbersSmallerThan = function (array, value) {
  return array.filter(function(number){
    return number < value;
  })
}

console.log(numbersSmallerThan(myNumbers, 10));
