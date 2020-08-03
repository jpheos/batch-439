// Basic types
// number, strings

console.log('hello');
console.log(42);

// Cast from type to another
console.log((42).toString()); // number to string
console.log(Number.parseInt('42', 10)); // string to number

// Arrays and Hash -> Arrays and Object
console.log(['hello', 'world', 42]) // array
console.log({ key: 'value', key2: 'value2' }) // object

// Nil
console.log(undefined)
console.log(null)
console.log(NaN)


// Variables
// ruby => toto = 12
// php => $toto = 12;
// C++ => Int toto = 12;
const toto = 12; // For a constant, so a variable that won't change
let anotherVariable = 8; // For a varaible that will be re assigned
let test;

// var hello; Old way of doing;

console.log(test);

// String focus
const aString = 'Hello world';
console.log(aString.length);
console.log(aString[1]);

console.log(aString.substring(2)); // => llo world

// Interpolation
const firstName = 'Benjamin';
const lastName = 'Jolivot';

console.log(`Bonjour ${firstName} ${lastName}`);

// Array focus
const fruits = [];
fruits.push('peach');
fruits.push('banana', 'strawberry');
console.log(fruits);


// Iterates over an array
const beatles = ["paul", "john", "ringo", "george"];

// beatles.each do |beatle|
//   puts beatle.upcase
// end

beatles.forEach((beatle) => {
  console.log(beatle);
});

// const aMethodInAvariable = (beatle) => {
//   console.log(beatle);
// }
// beatles.forEach(aMethodInAvariable);


// If / else
let age = 13;

if (age >= 18) {
  console.log("You can vote");
} else if (age >= 12) {
  console.log("Too young");
}

const rainy = true;

accessory = (rainy == true ? 'unmbrella' : 't-shirt');
console.log(accessory)

console.log(42 == 42); // true
console.log('42' == 42); // true
console.log('42' === 42); // false

// Object focus
const student = {
  firstName: "Boris",
  lastName: "Paillard"
};

console.log(student['firstName']) // => 'boris'
console.log(student.firstName)
student['firstName'] = 'Romain';
student.firstName = 'Romain';
student.nickName = 'Papillard';
console.log(student);


// Functions
// def a_method(param1, param2)
//   param1 + param2
// end

function aMethod(param1, param2) {
  return param1 + param2;
}


const anotherMethod = (param1, param2 = 'default value') => {
  return param1 + param2;
}

const methodWithoutParameters = () => {
  console.log('hello');
}

console.log(anotherMethod('jean', 'pierre'));

// const square = (x) => {
//   return x * x;
// };

const square = x => x * x;



const capitalize = (param) => {
  const firstLetter = param[0].toUpperCase();
  const restOfString = param.substring(1).toLowerCase();

  return firstLetter + restOfString;
};


console.log(capitalize('heLLO WorlD'));
console.log(capitalize('jean pierre'));


















