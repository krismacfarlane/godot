console.log("main.js linked");

// Query the DOM for the h1 and store it in a sensibly named variable
var header = document.querySelector("h1");

// Change the header's text so that it reads "Inhabitants of Los Angeles (1984)".
header.textContent = "Inhabitants of Los Angeles (1984)"

// Query the DOM for any list items with the class of `cop`, and store the elements in a variable called `cops`.
var cops = document.querySelectorAll(".cop");

// Loop through all the `cops`, giving each the color of `lightskyblue`.
for (var i = 0; i < cops.length; i++) {
    cops[i].style.color = "lightskyblue";
};

// Create a div with the class of `terminator`, and append it to the div with the id of `los-angeles`.
var termDiv = document.createElement("div");
termDiv.setAttribute("class", "terminator");
var la = document.querySelector("#los-angeles");
la.appendChild(termDiv);

// Query the DOM for the element with id of `the-one-true-sarah-connor`, and save it in a variable called `theOneTrueSarahConnor`.
var theOneTrueSarahConnor = document.querySelector("#the-one-true-sarah-connor");

// Give `theOneTrueSarahConnor` the class of `badass`.
theOneTrueSarahConnor.setAttribute("class", "badass");

// Query the DOM for all elements that have the class `collateral-damage`, and save the elements in a variable called `poorSouls`.
var poorSouls = document.querySelectorAll(".collateral-damage");

// Iterate through `poorSouls`, removing the elements from the DOM one by one.
for (var i = 0, len = poorSouls.length; i < len; i++){
  poorSouls[i].parentNode.removeChild(poorSouls[i]);
}

// Remove the terminator from the DOM.
la.removeChild(termDiv)


