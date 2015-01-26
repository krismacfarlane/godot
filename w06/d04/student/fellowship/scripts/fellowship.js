console.log("Linked.");

// Dramatis Personae
var hobbits = [
  'Frodo Baggins',
  'Samwise \'Sam\' Gamgee',
  'Meriadoc \'Merry\' Brandybuck',
  'Peregrin \'Pippin\' Took'
];

var buddies = [
  'Gandalf the Grey',
  'Legolas',
  'Gimli',
  'Strider',
  'Boromir'
];

var lands = ['The Shire', 'Rivendell', 'Mordor'];
var body = document.querySelector('body');

var makeMiddleEarth;
function makeMiddleEarth() {
  // create a section tag with an id of middle-earth
  var middleEarth = document.createElement("div");
  middleEarth.setAttribute("id", "middle-earth");
  body.appendChild(middleEarth);

  // add each land as an article tag
  var addingLands = document.createElement("a");
  var selectLands = document.querySelectorAll(lands).addingLands;
  document.querySelector("#middle-earth").appendChild(selectLands);
  // inside each article tag include an h1 with the name of the land
  // append middle-earth to your document body
}

makeMiddleEarth();
