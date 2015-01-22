// click on the body
// make the background black
// make the text white

var body = document.querySelector("body");

var invertBody = function(event){
  body.style.backgroundColor = "black";
  body.style.color = "white";
}

body.addEventListener("click", invertBody)

// create a click event handler called shootSonny
var shootSonny = function(event) {
  // that changes the event.target to red
  event.target.style.backgroundColor = "red";
  event.stopPropagation(); //stops event from bubbling up
}

// add a click event listener to sonnys li
// that calls shootSonny
var sonny = document.querySelectorAll(".mobster")[1];

sonny.addEventListener("click", shootSonny);

// after 149 clicks, remove sonny from the DOM
var corleone = document.querySelector("#corleone")
var sonny = corleone.children[1]

var b = 0;

var burrySonnyHandler = function(event) {
  event.target.style.backgroundColor = "red";
  event.stopPropagation();
  b++;
  if (b > 10){
    corleone.removeChild(sonny)
  }
}

sonny.addEventListener("click", burrySonnyHandler);
