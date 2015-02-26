$(document).ready(function(){
  console.log("main.js linked");

  // caches reference to commonly needed DOM elements
  var $userInfo    = $(".user-info"),
      $xButton     = $(".x"),
      $heartButton = $(".heart");

  var clearRandomUser = function() {
    $userInfo.children().fadeOut().remove();
  }

  var findRandomUser = function(e) {
    $.ajax({
      url: 'http://api.randomuser.me',
      type: 'GET',
      dataType: "json"
    }).done(function (data) {
      var name = data["results"][0]["user"]["name"]["first"];
      var image_url = data["results"][0]["user"]["picture"]["medium"];
      var age = (Math.random() * 25) + 23;
      var showTinderTemplate = $("#tinder-template").html();
      var generateUserHTML = _.template(showTinderTemplate);
      var userHTML = generateUserHTML({ image_url: image_url, name: name, age: age});
      $userInfo.append(userHTML);
    });
  };

  var matchRandomUser = function(e) {
    var showMatchTemplate = $("#match-template").html();
    var generateUserHTML = _.template(showMatchTemplate);
    var image_url = $(".user-info img").attr('src');
    var alt = $(".user-info img").attr('alt');
    var name = alt.split(" ").pop();
    var userHTML = generateUserHTML({ image_url: image_url, name: name });
    $(".matches-container").append(userHTML);
  }

  findRandomUser();

  $xButton.on("click", function(e) {
    clearRandomUser();
    findRandomUser();
  });

  $heartButton.on("click", function(e) {
    matchRandomUser();
    clearRandomUser();
    findRandomUser();
  });

});
