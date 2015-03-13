var turtleData;

// returns a constructor function
var ReporterModel = Backbone.Model.extend({
  url: "http://localhost:3000/reporter"
});

// instantiate a new reporter model
var april = new ReporterModel();


// makes GET request to specificed URL and sets mirrored attributes
april.fetch();

april.get("name") // => returns "April"

var RatModel = Backbone.Model.extend({
  url: "http://localhost:3000/rat"
});

var RatView = Backbone.View.extend({
  // specifies the DOM element to which the view will attach, is a div with class "profile"
  el: '.profile',

  // function that will be invoked when the view is instantiated
  initialize: function() {
    this.listenTo(this.model, "change", this.render)
    this.render();
  },

  // the $el property is given to us by Backbone if jQuery is available (in this case, it is)
  // $el allows us to use jQuery methods on the view's el. Here, we us .html() to set the inner html of this
  render: function() {
    this.$el.html("<h1>" + this.model.get("name") + "</h1>");
  }
})

var splinter = new RatModel();

splinter.fetch().done(function) {
  ratView = new RatView ({model: splinter});
};

var FootSoldier = Backbone.Model.extend({
  defaults: {
    id: null,
    height_in_inches: null,
    weight_in_pounds: null,
    image_url: null,
    created_at: null,
    updated_at: null
  }
});

var FootSoldiersCollection = Backbone.Collection.extend({
  url: '/foot_soldiers',
  model: FootSoldier
});

var footSoldiers = new FootSoldiersCollection();

// fires GET request to '/foot_soldiers'
footSoldiers.fetch();

// returns Backbone Model
var footSoldierThree = footSoldiers.get(3);
//returns 68
// footSoldierThree.get("height_in_inches");

var VillainModel = Backbone.Model.extend({
  defaults: {
    id: null,
    name: null,
    species: null,
    superpower: null
  }
});

var VillainCollection = Backbone.Collection.extend({
  url: '/villains',
  model: VillainModel
});

var villains = new VillainCollection();
villains.fetch().done(function() {
  var rocksteady = villains.get(4);
  var speciesOfKrang = villains.get(2).get("species");
  var shredder = villains.get(1);
  shredder.set("superpower", "hatred");
  shredder.save();
});




$(document).ready(function(){




});

