console.log('main.js')

$(document).ready(function() {
  $contentDiv = $('.content');
  kait = new app.Dog("Kait", $contentDiv);
  kait.addToPage();
  lassie = new app.Dog("Lassie", $contentDiv);
  lassie.addToPage();
  rascal = new app.Dog("Rascal", $contentDiv);
  rascal.addToPage();
  wendy = new app.Dog("Wendy", $contentDiv);
  wendy.addToPage();
  laika = new app.Dog("Laika", $contentDiv);
  laika.addToPage();
});

