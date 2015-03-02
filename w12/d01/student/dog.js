console.log('woof');

var $contentDiv,
    $template,
    generateNewTemplate;

var Dog = function(name) {
  this.name = name;
  this.age = 0;
};

$(document).ready(function() {
  $content = $('.content');

  Dog.prototype = {
    $template: $('#dog-template'),
    bark: function() {return 'bark bark!';},
    sit:  function() {return 'sits';},
    save: function(boysName) {return 'woof (ok, ill save ' + boysName + ')!';}
  }

  Dog.prototype.render =  _.template(Dog.prototype.$template.html());

  $(generateNewTemplate({name: "Lassie", age: 0})).append($contentDiv);
});

