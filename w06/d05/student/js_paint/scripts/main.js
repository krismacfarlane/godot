var mouseDepressed = false;

var body = document.querySelector("body");


var paintbrush = function(event) {
  event.target.classList.add("green");
  }

var unpaint = function(event) {
  if (mouseDepressed === false) {
  event.target.classList.remove("green");
  }
}

var depressMouse = function(event) {
  mouseDepressed = true;
  }

var unDepressMouse = function(event) {
  mouseDepressed = false;
  }

var canvas = document.querySelector(".canvas")

for (var i = 0; i < 805; i ++) {
  var tiles = document.createElement("div");
  tiles.setAttribute("class", "tile");
  tiles.addEventListener("mouseover", paintbrush);
  tiles.addEventListener("mouseout", unpaint);
  canvas.appendChild(tiles);
};

canvas.addEventListener("mousedown", depressMouse);
canvas.addEventListener("mouseup", unDepressMouse);

var tiles = document.querySelectorAll(".tile");
var resetting = document.querySelector(".reset");

var getRid = function(){
  for (var i=0;i<tiles.length;i++){
  tiles[i].classList.remove("green");
  }
}

resetting.addEventListener("click", getRid);

var colors = ["red", "goldenrod", "blue"];
var palette = document.querySelector(".color-palette")

for (i = 0; i < colors.length; i ++) {
  var colorDiv = document.createElement("div");
  colorDiv.setAttribute("class", "droplet");
  colorDiv.classList.add(colors[i]);
  palette.appendChild(colorDiv);
}

