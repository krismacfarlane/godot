// Write a function called `loadJS` that creates a "script" element and sets its
// "src" attribute to "js/app.js". Append the script element to the document's head.

var loadJS = function() {
  var s = document.createElement("script");
  s.setAttribute("src","js/app.js");
  var head = document.querySelector("head");
  head.appendChild(s);
}
// loadJS();

// Write a function called `loadCSS` that creates a "link" element and sets its
// "href" attribute to "css/style.css" and it's "rel" attribute to "stylesheet". Append
// the link element to the document's head.

var loadCSS = function() {
  var link = document.createElement("link");
  link.setAttribute("href", "css/style.css");
  link.setAttribute("rel", "stylesheet");
  var head = document.querySelector("head");
  head.appendChild(link);
}
// loadCSS();


// Write a function called `loadStyle` that creates a "style" element and set its
// "innerText" to "body { background: blue; }". Append the style element to the
// document's head.

var loadStyle = function() {
  var style = document.createElement("style");
  style.innerText = "body { background: blue; }";
  var head = document.querySelector("head");
  head.appendChild(style);
}
// loadStyle();

// Write a function called `colorify` that uses [`window.prompt`](https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt) to ask the user to enter a
// color and then change the background color of the page to that color.

var colorify = function() {
  var color = window.prompt("Enter a color")
  document.body.style.backgroundColor = color;
}
// colorify();

// Write a function called `jQueryify` that creates a "script" element and sets
// it's "src" attribute to the following CDN
// "https://code.jquery.com/jquery-1.11.2.min.js" Append the script element to the
// document's head.

var jQueryify = function() {
  var script = document.createElement("script");
  script.setAttribute("src", "https://code.jquery.com/jquery-1.11.2.min.js");
  var head = document.querySelector("head");
  head.appendChild(script);
}
// jQueryify();

// Write a function called `lodashify` that creates a "script" element and sets
// it's "src" attribute to the following CDN
// "https://cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.js" Append the
// script element to the document's head.

var lodashify = function() {
  var script = document.createElement("script");
  script.setAttribute("src", "https://cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.js");
  var head = document.querySelector("head");
  head.appendChild(script);
}
// lodashify();

// Write a function called `adventureTime` that creates a "script" element with the
// "src" attribute "js/adventure.js" and append it to the document's head.

var adventureTime = function() {
  var script = document.createElement("script");
  script.setAttribute("src", "js/adventure.js");
  var head = document.querySelector("head");
  head.appendChild(script);
}
