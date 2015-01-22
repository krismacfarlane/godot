var colors;
colors = [
  "green",
  "pink",
  "purple",
  "navy blue",
  "polka dot"
];
console.log("colors.js")
console.log("All that glitters is not " + colors[4])

var iLove = function(something){
  somethingUp = something.toUpperCase();
  return "I love " + somethingUp + "!";
};

console.log(iLove(colors[0]) + " The most!");
console.log(iLove(colors[1]) + " The next most!");

//this is a while loop

// var thingsILove = ["cats", "candy", "cupcakes"]
// var len = colors.length;
// var i = 0;
// while (i < len) {
//   // console.log(i + ": " + colors[i]);
//   console.log( iLove(colors[i]) );
//   thingsILove.push(iLove(colors[i]));
//   i += 1;
// };

// for loop
var thingsILove = ["cats", "candy", "cupcakes"]

for (var i = 0, len = colors.length; i < len; i ++) {
  console.log( iLove(colors[i]) );
  thingsILove.push(iLove(colors[i]));
}

// conditional

var name = "kristen macfarlane";
if (name.length === 10) {
  console.log("I love green!");
} else if (name.length < 10) {
  console.log("I love brown!");
} else {
  console.log("No!");
}

var isTwentyOne = function(person) {
  return person.age >= 21
};
