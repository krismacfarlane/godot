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

}

