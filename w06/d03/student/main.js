var student = "Kristen";

console.log("main.js")
console.log("Welcome, " + student + "!!!!");


// primitives
// use === to compare
var aString, anInteger, aFloat, aBoolean;

aString = "This is a string";
anInteger = 42;
aFloat = 3.14159;
aBoolean = true;

// our anti-types
// all of which are types of nil
undefined // nil because nothing was set yet
null // nil because it is nothing
NaN // nil because there is number that can be set to this

// data structures
var anArray, anObject;

anArray = [aString, anInteger, aFloat, aBoolean];
anObject = {instructor: "Travis", dog: "Kait"}; // kind of like a hash

// function, they take arguments, but never take blocks
// a function expression
var aFunction;

aFunction = function(){
  console.log("Hello world!");
};

// a function declaration
// avoid doing it this way
function anotherFunction(){
  console.log("Hello world!");
};


var sayItsYourBirthday = function(age){
  console.log("It's your birthday!")
  console.log("I hope " + age + " is better than " + (age-1) + "!");
  return true // have to write this or it was return 'undefined'n i
};

