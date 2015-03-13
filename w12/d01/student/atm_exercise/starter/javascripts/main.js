console.log('main.js loaded');

var AtmView = function(type, id) {
  this.number = id;
  this.type = type;
  this.amount  = 0;
}

AtmView.prototype = {
  $template: $('#account-template'),
};

AtmView.prototype.render = function(e){

  var generateAtmViewHTML = _.template( AtmView.prototype.$template.html() );
  var accountHTML =  generateAtmViewHTML( this );

  $(accountHTML).appendTo($(e));
}

$(document).ready(function(){

  var checking = new AtmView("checking", 1);
  var savings  = new AtmView ("savings", 2);

  var accounts = [ checking, savings ];

  accounts.forEach( function(account){
    account.render(".balance");
  });

  var $balances = $(".balance");

  [].forEach.call($balances, function(balance){
    var amount = parseInt( $(balance).text().replace("$", "") );
    if( amount === 0)
      $(balance).addClass("zero");
  });


});
