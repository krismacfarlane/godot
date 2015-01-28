// caches the walker; we're going to be dealing with him a lot
var theWalker = document.getElementById('the-walker');

// theWalker.style.right = "0px";

// var left = function moveLeft() {
//   theWalker.style.right = parseInt(theWalker.style.right) + 10 + 'px';
// }

// var right = function moveRight() {
//   theWalker.style.left = "2400";
//   theWalker.style.left = parseInt(theWalker.style.left) + 200 + 'px';
// }

// setInterval(left, 1000);

// // theWalker.setAttribute("class", "walk-right");
// // setInterval(right, 1000);

// // function movement(object) {
// //   if (parseInt(object.style.right) > 2400 && parseInt(object.style.right) < 0) {
// //     var ugh = setInterval(left, 1000);
// //   } else {
// //     clearInterval(ugh);
// //     theWalker.setAttribute("class", "walk-right");
// //     setInterval(right, 1000);
// //   }
// // }

var pixelCountFromRight = 0;
var walkingLeft = true
theWalker.style.right = pixelCountFromRight + "px";

var walk = function() {
  if (pixelCountFromRight > 2200 || pixelCountFromRight < 0) {
    theWalker.classList.toggle("walk-right");
    walkingLeft = !walkingLeft;
  }
  if (walkingLeft) {
    pixelCountFromRight += 100;
  } else {
    pixelCountFromRight -= 100;
  }
  theWalker.style.right = pixelCountFromRight + "px";
}

setInterval(walk, 200);

