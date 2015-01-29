console.log("followship.js loaded");

var $body = $("body");
// ## 1

var makeMiddleEarth = function() {
  var $middleEarth = $('<div id="middle-earth"></div>');
  for(var i=0, length=lands.length; i < length; i++) {
    var $article = $('<article class="land"></article>');
    var $h1 = $("<h1>").text(lands[i]);
    $article.append($h1);
    $middleEarth.append($article);
  }
  $body.append($middleEarth);
}

setTimeout(makeMiddleEarth, 1000);


// ## 2


var makeHobbits = function() {
  var $ul = $('<ul id="hobbits"></ul>');
  for(var i=0, length=hobbits.length; i < length; i++) {
    var $li = $('<li class="hobbit"></li>');
    $li.text(hobbits[i]);
    $ul.append($li);
  }
  $(".land").eq(0).append($ul);
}

setTimeout(makeHobbits, 2000);

// ## 3


var keepItSecretKeepItSafe = function() {
  var $ring = $('<div id="the-ring" class="magic-imbued-jewelry"></div>');
  $ring.on("click", function(){
    nazgulScreech();
  });
  $(".hobbit").eq(0).append($ring);
}

setTimeout(keepItSecretKeepItSafe, 3000);

// ## 4

var makeBuddies = function() {
  var $aside = $('<aside></aside>');
  var $ul = $('<ul id="buddies"></ul>');
  for(var i=0, length=buddies.length; i < length; i++) {
    var $li = $('<li class="buddy"></li>').text(buddies[i]);
    $ul.append($li);
  }
  $aside.append($ul)
  $(".land").eq(1).append($ul);
}

setTimeout(makeBuddies, 4000);

// ## 5

var beautifulStranger = function() {
  var $strider = $(".buddy").eq(3);
  $strider.text("Aragon").css("color","green");
}

setTimeout(beautifulStranger, 5000);

// ## 6

var leaveTheShire = function() {
  var $hobs = $("#hobbits");
  $(".land").eq(1).append($hobs);
}

setTimeout(leaveTheShire, 6000);

// ## 7

var forgeTheFellowShip = function() {
  var $theFellowship = $('<div id="the-fellowship"></div>');

   for(var i=0, length=hobbits.length; i < length; i++) {
     var $hobbit = $(".hobbit").eq(0);
     $theFellowship.append($hobbit);
     alert($hobbit.text() + " has joined your party");
   }

   for(var i=0, length=buddies.length; i < length; i++) {
     var $buddy = $(".buddy").eq(0);
     $theFellowship.append($buddy);
     alert($buddy.text() + " has joined your party");
   }
   $(".land").eq(1).append($theFellowship);
}

setTimeout(forgeTheFellowShip, 7000);

// ## 8

var theBalrog = function() {
  var $gandolf = $("li").eq(4);
  $gandolf.text("Gandolf the White");
  $gandolf.css("border-color", "white");
  $gandolf.css("border-weight", "3px");
  $gandolf.css("border-style", "solid");
}

setTimeout(theBalrog, 8000);

// ## 9

// Boromir's been killed by the Uruk-hai!
var hornOfGondor = function() {
   alert("The Horn Of Gondor has been blown!");
   var $boromir = $("li").eq(8);
   $boromir.css("text-decoration", "line-through");
   $boromir.fadeTo("slow", 0.3);
}

setTimeout(hornOfGondor, 9000);
