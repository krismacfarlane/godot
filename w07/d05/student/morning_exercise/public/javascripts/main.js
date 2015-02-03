// Add an event listener to the the "button.way-no-way" so that when you click on it, the text of the button toggles between "no way" to "way"

var wayNoWayToggle = function(event){
  // get the text of the button
  var buttonText = $(event.target).text();
  // if the text is way
  if ( buttonText === "way") {
  // change the text to no way-no-way
    $(event.target).text("no way");
  } else {
  // change the text to way
    $(event.target).text("way");
  }
};

$(".way-no-way").on("click", wayNoWayToggle);

// Add an event listener to the "span.name" so that when you click on it
// - add the class "hidden" to it
// - remove the class class "hidden" from "input.input-name"
// - set the value of "input.input-name"' to the text of "span.name"

var spanToggle = function(event) {
  // - add the class "hidden" to it
  $(event.target).addClass("hidden");
  // - remove the class class "hidden" from "input.input-name"
  $("input.input-name").removeClass("hidden");
  // - set the value of "input.input-name"' to the text of "span.name"
  var spanText = $(event.target).text();
  $("input.input-name").val(spanText);
}

$("span.name").on("click", spanToggle);

// Add an "keypress" event listener to "input.input-name" so that when you type in a name and hit "return"
// - the class "hidden" is added to "input.input-name"
// - the class "hidden" is removed from "span.name"
// - the value from "input.input-name" is set to the text of "span.name"

var changeName = function (e) {
  // if enter is pressed
  if (e.keyCode == 13) {

    $("input.input-name").addClass("hidden");
    $("span.name").removeClass("hidden");

    var textInput = $("input.input-name").val();
    $("span.name").text(textInput);
  }
};

$("input.input-name").on("keypress", changeName);

// Add an event listener to "img.extreme-closeup" so that when you fire a mousedown event make the element's CSS ["transform: scale(n)"](https://developer.mozilla.org/en-US/docs/Web/CSS/transform#scale) property __continually__ increase.

var closeup = function(event) {
  $(event.target).css("transform: scale(n)");
}

$("img.extreme-closeup").on("mousedown", closeup);
