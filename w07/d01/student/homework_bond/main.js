console.log("main.js is loaded")

// // ## Part 1: grossToNumber

// // Write a method called `grossToNumber` that takes a gross as a string converts it
// // into a number.

var grossToNumber = function(gross) {
  var newNum = gross.replace("$", "").split(",").join("")
  return parseInt(newNum);
}

// ## Part 2: sumGrosses

// Write a method called `sumGrosses` that takes `bondFilms` and returns the sum of
// all the grosses as a number.

var sumGrosses = function(bondFilms) {
  var grosses = _.map(bondFilms, function(film){
    return grossToNumber(film.gross);
  });
  var total = _.reduce(grosses, function(sum, n){
    return sum + n;
  });
  return total;
}


// ## Part 3: actorNames

// Write a method called `actorNames` that takes `bondFilms` and returns an array
// of strings of the names of the all actors who have ever played Bond, but with no
// duplicates.

var actorNames = function(bondFilms) {
  var names = _.pluck(bondFilms, "actor");
  return _.uniq(names);
}


// ## Part 4: oddBonds

// Write a method called `oddBonds` that takes `bondFilms` and returns an array of
// only the bondFilm objects with odd-numbered years.

var oddBonds = function(bondFilms) {
  return _.select(bondFilms, function(film) {
    var year = moment(film.releasedOn).year();
    return year % 2 == 0;
  });
}

// ## Part 5: worstGrossingBond

// Write a method called `worstGrossingBond` that takes `bondFilms` and returns a
// JavaScript object of the bond film with the lowest gross.

var worstGrossingBond = function(bondFilms) {
  return _.min(bondFilms, function(film){
    return grossToNumber(film.gross);
  });
}

// ## Part 6: highestGrossingBond

// Write a method called `highestGrossingBond` that takes `bondFilms` and returns a JavaScript object of the bond film with the highest gross.

var highestGrossingBond = function(bondFilms) {
  return _.max(bondFilms, function(film){
    return grossToNumber(film.gross);
  });
}

// ## Part 7: moviesPerActor

// Write a method called `moviesPerActor` that takes `bondFilms` and returns a JavaScript object where the properties are the actors names and the values are their total number of films.

var moviesPerActor = function(bondFilms) {
  var filmsByActor = _.groupBy(bondFilms, "actor");
  return _.forIn(filmsByActor, function(films, actor){
    return filmsByActor[actor] = films.length;
  })
}

// ## Part 8: sortByRelease

// Write a method called `sortByRelease` to sort the `bondFilms` array by year of release, with the earliest films first.

var sortByRelease = function(bondFilms) {
  return _.sortBy(bondFilms, function(film){
    return moment(film.releasedOn);
  });
}

// ## Part 9: titlesOfWordCount

// Write a method called `titlesOfWordCount` that takes the `bondFilms` as the first argument and a `numberOfWords` (a number) as the second parameter.  It should return an array of strings of titles with the specified number of words.

var titlesOfWordCount = function(bondFilms, numberOfWords) {
  var films = _.select(bondFilms, function(film){
    return film.title.split(" ").length == numberOfWords;
  });
  return _.pluck(films, "title");
}

///////////////

var appendAnswer = function(answer) {
  var ul = document.querySelector("#answers");
  var li = document.createElement("li");
  li.textContent = JSON.stringify(answer);
  ul.appendChild(li);
}

var one   = grossToNumber( "$622,246,378" ),
    two   = sumGrosses(bondFilms),
    three = actorNames(bondFilms),
    four  = oddBonds(bondFilms),
    five  = worstGrossingBond(bondFilms),
    six   = highestGrossingBond(bondFilms),
    seven = moviesPerActor(bondFilms),
    eight = sortByRelease(bondFilms),
    nine  = titlesOfWordCount(bondFilms, 3);

window.onload = function(){
  appendAnswer(one);
  appendAnswer(two);
  appendAnswer(three);
  appendAnswer(four);
  appendAnswer(five);
  appendAnswer(six);
  appendAnswer(seven);
  appendAnswer(eight);
  appendAnswer(nine);
};
