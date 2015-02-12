console.log("main.js linked");

var $reset = $("#reset"),
    $start = $("#start"),
    $pause = $("#pause"),
    $timer = $("#timer");

var count = 0,
    timerActive = false,
    time;


$start.on("click", function(e) {
  console.log("the start button was clicked");
  timerActive = true;
  time = setInterval(function() {$timer.text("Time elapsed: " + count++)}, 1000);
});

$reset.on("click", function(e) {
  console.log("the reset button was clicked");
  clearInterval(time);
  $timer.text("Stop Watch");
  count = 0;
});

$pause.on("click", function(e) {
  console.log("the pause button was clicked");
  if (timerActive) {
    clearInterval(time);
    timerActive = false;
  } else {
    time = setInterval(function() {$timer.text("Time elapsed: " + count++)}, 1000);
  }
});
