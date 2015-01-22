console.log("loaded")

document.querySelector("#amount");

var amountControl = document.querySelector("#amount");
var taxControl    = document.querySelector("#tax");

amountControl.value = 20;
taxControl.value = 0.0087;
var totalControl = document.querySelector("#total");

var calculateTotalBill = function(){
  // get the amount from the input
  // convert the amount to float
  var amount = parseFloat(amountControl.value);
  // get the tax
  // conver the amount to float
  var tax = parseFloat(taxControl.value);
  // assign .2 to tip
  var tip = 0.2;
  // assign tipAmount to amount * tip
  var tipAmount = amount * tip
  // return tipAmount + (amount * tax) + amount
  var total = (tipAmount + (amount * tax) + amount);
  totalControl.textContent =  total;
}

var h1Tag = document.querySelector("h1");

//
var greeting = function() {
  alert("Hello!");
}

var handleMouseOver = function(event) {
  console.log(event);
  console.log("mouseover")
}

var formSubmitHandler = function(event) {
  event.preventDefault();
  console.log("I will not be submitted to this");
}

// registering event listeners
h1Tag.addEventListener("click", greeting);
totalControl.addEventListener("mouseover", handleMouseOver);

// prevent the default behavior of the form
var form = document.querySelector("form");
form.addEventListener("submit", formSubmitHandler)

