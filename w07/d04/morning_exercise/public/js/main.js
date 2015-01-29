var $body = $("body");
var shotCount = 0; // defined outside of function so it doesn't keep reassigning to 0

var bang = function(event){

  if (shotCount < 10) {
    console.log("BANG!");
    $body.addClass("shot");
    var back = function(){
      $body.removeClass("shot");
    }
    setTimeout(back, 3000)
    shotCount++;
  } else {
    $body.addClass("dead");
    $("img").addClass("hidden");
  }

};

var appendCast = function() {
  var $ul = $("#cast");
  for (prop in cast) {
    $li = $("<li>").text(cast[prop].actor);
    $ul.append($li);
  }
  $ul.removeClass("hidden").css("color", "blue");
}

var keypressHandler = function() {
  console.log(event.keyCode);
  var char = String.fromCharCode(event.keyCode);
  console.log(char)

  if (char === "c") {
    appendCast();
  }
}


// once the DOM has loaded
$(document).ready(function(){
  // attach event listener
  $(window).on("mousemove", bang);
  $(window).on("keypress", keypressHandler);
});
