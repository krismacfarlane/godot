$(document).ready(function() {

  $labOne = $(".top-left")
  $labTwo = $(".top-center");
  $labThree = $(".top-right");
  $beagelOne = $(".bottom-left");
  $beagelTwo = $(".bottom-center");
  $beagelThree = $(".bottom-right");
  $bg = $(".bg");


  $(window).scroll( function(){
    var $amountScrolled = $(window).scrollTop();

    $labOne.css("top", $amountScrolled);

    $bg.css("background-position", $amountScrolled * 0.7);
  });


}); // on page load
