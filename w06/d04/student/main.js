console.log("main.js is loaded!!!");

// querySelector grabs an element
var pTag = document.querySelector("p");

// textContent changes the elements text
pTag.textContent = "Aloha";

// querySelectorAll grabs all the matches
var ingredients = document.querySelectorAll("li");

// create a DOM node with createElement
var liTag = document.createElement("li");
liTag.textContent = "Graham Cracker";
document.querySelector("#smores-ingredients").appendChild(liTag);
