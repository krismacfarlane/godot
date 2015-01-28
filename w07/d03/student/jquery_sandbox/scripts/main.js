// var $title = $("#title");
// $title.addClass("pleasant");

// $title.attr("role", "page indentification");

// var $lis = $("li");
// $lis.eq(0).css("color", "orange");

// // peace signs creates elements in memory
// var $newLi = $("<li>");
// $newLi.text("Bully Repulsion");

// $("ul").append($newLi);

// var $tomboy = $("<li class='tomboy' id='marpdarp'>");
// $tomboy.text("Helllooooooo");
// $("ul").append($tomboy);

/////

// Change the h1 so that it has the class 'classy', and its text reads "The Fart Store"
// Change the h1's font size to 8ems.
var $heading = $("h1");
$heading.addClass("classy").text("The Fart Store").css("font-size", "8em");


// Add the "backdrop" class to the body element.
var $body = $("body");
$body.addClass("backdrop");

// Target the first paragraph tag on the DOM, and change its text so that it reads '- Established 2014 -'. Then give it the class 'sub-head'
var $ps = $("p");
$ps.eq(0).text("- Established 2014 -").addClass("sub-head");

// Target the second paragraph tag on the DOM, and give it the inner html "Everything You Need to Start <span>Farting</span> Around"
$ps.eq(1).html("Everything You Need to Start <span>Farting</span> Around");

// Remove the h2 from the dom
$("h2").remove();

// Remove the entire unordered list of features from the DOM
$("ul").remove();

// Give all of the paragraphs tags the 'classy' class.
$ps.addClass("classy");

// Create a div with class of 'product-container'. Append 8 new child divs with the class of 'jar'.
var $container = $('<div class="product-container"></div>');

for (i = 0; i < 8; i++) {
  var $newJar = $('<div class="jar"></div>');
  $container.append($newJar);
}

// Add the 'product-container' div after the second <p> tag.
$ps.eq(1).after($container)

// Create a button element with text "Sample The Product", and an id of "sample-button". Append it to the DOM's <body> element.
var $button = $('<button id="sample-button">Sample the Product</button>');
$container.after($button);

$button.on("click", function(){
  var $div = $('<div class="product">');
  $div.fadeIn("slow", function(){
    setTimeout(function (){
      $div.fadeOut("slow"); }, 5000);
  });
  $body.append($div);
});

/////
// .text() -- changes the innertext

// var $header = $("h1");
// $header.text("Practicing jQuery!");

// .html() -- replaces the HTML
// var $header = $("h1");
// $header.html("<button>click</button>")


// .attr() -- adds attributes (src, class, id, etc.)
// var $ps = $("p");
// $ps.attr("class", "pleasant");

// .addClass() -- adds a class
// var $title = $("#title");
// $title.addClass("pleasant");

// .removeClass() -- removes a class
// var $title = $("#title");
// $title.removeClass("pleasant");

// .toggleClass()
// var $title = $("#title");
// $title.toggleClass("pleasant");

// .css() -- modifies css from within the DOM
// var $h2 = $("h2");
// $h2.css("background-color", "yellow");

// .remove() -- removes the object that it is called on. In this example, the h2 would be removed.
// var $h2 = $("h2");
// $h2.remove();

// .append() -- adds whatever is passed at the end of the object. In this example, a button would be added to h2.
// var $h2 = $("h2");
// $h2.append("<button>click</button>");

// .prepend() -- adds whatever is passed at the before the object. In this example, a button would be added before h2.
// var $h2 = $("h2");
// $h2.prepend("<button>click</button>");

// .on() -- use this instead of addEventListener
// var $h2 = $("h2");
// $h2.on("click", function() {
//  console.log("this is how .on works");
// });

// .fadeIn()
// var $h2 = $("h2");
// $h2.on("click", function() {
//  $h2.fadeIn("slow", function() {
//    console.log("coming back...");
//  });
// });

// .fadeOut()
// var $h2 = $("h2");
// $h2.on("click", function() {
//  $h2.fadeOut("slow", function() {
//    console.log("fading...");
//  });
// });

