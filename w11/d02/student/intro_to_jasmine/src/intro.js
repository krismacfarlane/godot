var sleepIn = function(dayName) {
  if (dayName == 'Saturday' || dayName == 'Sunday') {
    return true;
  } else {
    return false;
  }
};

var pluralize = function(list) {
  var tail = list.pop();
  return phrase = list.join(", ") + " and " + tail;
};

var prettyTime = function(seconds) {
  time = seconds / 60;
  return time + " minutes";
};


  // var hours = seconds / 3600;
  // var minutes = seconds - (hours * 3600) / 60;
  // var secs = seconds - (hours * 3600) - (minutes * 60);

  // if (hours   < 10) {hours   = "0"+hours;}
  // if (minutes < 10) {minutes = "0"+minutes;}
  // if (secs < 10) {secs = "0"+secs;}
  // var time    = hours + ' hours '+ minutes + 'minutes' + secs + 'seconds';

  // return time;
