console.log('main.js loaded');

// part 1
// var taskList = {};

// taskList["task1"] = {complete: false, description: "Buy a cat"};
// taskList["task2"] = {complete: true, description: "Cash checks"};
// taskList["task3"] = {complete: false, description: "Do homework"};

// // part 2

// taskList["counter"] = 4;

// var createTask = function(description, complete) {
//   var uniqueID = "task" + taskList.counter;
//   taskList[uniqueID] = {complete: complete, description: description};
//   taskList.counter++;
//   return uniqueID;
// }

// part 3

var fireStream = new Firebase("https://mywditodoapp.firebaseio.com/");

var createTask = function(description) {
  var dataRef = fireStream.push({description: description, complete: false});
  var newID = dataRef.key();
  return newID;
};
var toggleTaskComplete = function(taskID) {
  fireStream.child(taskID).child("complete").set(true);
};
var removeTask = function(taskID) {
  fireStream.child(taskID).remove();
};

// part 4

// var fireStream = new Firebase(ENTER THE URL HERE!!!!!), //ENTER THE URL
//     $taskList = $('.task-list');

// var createFirebase = function() {
//   fireStream.on("child_added", function(snapshot) {
//     console.log ('child_added fired!')
//     var task = snapshot.val();
//     var id = snapshot.key();
//     displayTask(id, message);
//   });
//   fireStream.on("child_removed", function() {console.log ('child_removed fired!')});
//   fireStream.on("child_changed", function() {console.log ('child_changed fired!')});
// }

// click save

// click update

// click delete


// var displayTask = function(id, message) {
//   var $task   = $('<em/>').text(message.text),
//       $deleteButton = $('<button class="delete">X</button>'),
//       // create the new message and give it the id from firebase
//       $newTask   = $('<div/>').attr('id', id);

//   // add the text to the message
//   $newMessage.text(message.text + "  ").prepend($nameTextEl)

//   // if the message is "new" (just sent)
//   if (message.new) {
//     // add the buttons
//     $newMessage.append($deleteButton);
//     $newMessage.append($updateButton);

//     // attach listeners to the new messages buttons!
//     $deleteButton.on("click", deleteButtonHandler);
//     $updateButton.on("click", function(event) {console.log("update fired!")});

//     // then remove the new status, FOREVER
//     firebaseDataRef.child(id).child("new").remove();
//   }

//   // add the new message to the list
//   $newMessage.append($("<br><br>")).appendTo($messagesList);

//   // scroll to the message if necessary
//   $messagesList[0].scrollTop = $messagesList[0].scrollHeight;
// };
