var Lamb = function Lamb() {
  this.able_to_talk = true;
  this.woolAmount = 3;
  this.sheerAmount = 0;
};

Lamb.prototype.say = function() {
  if (this.able_to_talk == true) {
    return 'baaa';
  };
}

Lamb.prototype.silence = function() {
  this.able_to_talk = false;
}

Lamb.prototype.hasWool = function() {
  if (this.sheerAmount < 3) {
    return true;
  }
}

Lamb.prototype.wool = function() {
  return this.woolAmount + " bags full";
}

Lamb.prototype.sheer = function() {
  this.woolAmount -= 1;
  this.sheerAmount += 1;
}

