//======================================================
// Never Fear, The Code Below is For An Upcoming Example
//======================================================
var body = document.querySelector('body');
var pronunciation = "poh-TAY-toh";

var debate = function(){
  console.log(pronunciation);
  if (pronunciation === "poh-TAY-toh"){
    pronunciation = "po-TAH-toh";
  } else {
    pronunciation = "poh-TAY-toh";
  }
};

// setTimeout takes two arugments, the first is a function which holds the code we want to execute, the second is the delay in milliseconds. Thus, the code below will run after 5 seconds.

setTimeout(function(){
  console.log("Game of Thrones, Season 5. Oh yeah.")
}, 5000)


var createP = function() {
  var newP = document.createElement("p");
  newP.textContent = "The Beatles";
  body.appendChild(newP);
}

setTimeout(createP, 1000);

// var timerOne = setInterval(debate, 1000);
// var timerTwo = setInterval(debate, 1000);
// var timerThree = setInterval(debate, 1000);

// use setTimeout to add a p tag, with red text, to the body element
// use setInterval to repeatedly append a <p> tag with the text "Nah nah nah nah nah nah nah nah, Hey Jude"

var lyrics = function() {
  var newlyrics = document.createElement("p");
  newlyrics.textContent = ("Nah nah nah nah nah nah nah nah, Hey Jude");
  newlyrics.style.color = "red";
  body.appendChild(newlyrics)
}

var typeLyrics = setInterval(lyrics, 5000);

var makeObs = function() {
  var obs = document.createElement("p");
  obs.textContent = ("Wow, you must really like this page");
  obs.style.color = "green";
  body.appendChild(obs);
}

var madeObs = setTimeout(makeObs, 15000);

var button = document.querySelector("button");

var buttonAction = function() {
  clearInterval(typeLyrics);
  clearTimeout(madeObs);
  body.removeChild(button)
}

button.addEventListener("click", buttonAction)


