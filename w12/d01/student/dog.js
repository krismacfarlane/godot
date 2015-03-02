console.log('woof');

var app = {};

var app.Dog = function(name) {
  this.name = name;
  this.age = 0;
  this.$parentDiv = parentDiv;
};

app.Dog.prototype = {
  bark: function() {return 'bark bark!';},
  sit:  function() {return 'sits';},
  save: function(boysName) {return 'woof (ok, ill save ' + boysName + ')!';}
}

app.Dog.prototype.addToPage = function() {
  var stringofHTML = this.render({name: this.name, age: this.age});
  $(stringofHTML).appendTo(this.$parentDiv);
}

$(document).ready(function() {

  app.Dog.prototype.$template = $('#dog-template');
  app.Dog.prototype.render =  _.template(Dog.prototype.$template.html());

});

