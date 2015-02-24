// API Docs at:
// https://developer.spotify.com/technologies/web-api/search/

$(document).ready(function(){

  var form = $("form");

  form.on("submit", function(e){
    e.preventDefault();
    var searchedSong = $(".pure-input-rounded").val();
    $.ajax( {
      url: "http://ws.spotify.com/search/1/track",
      type: "GET",
      dataType: "json",
      data: { q: searchedSong }
    }).done(function(data){
      var songs = data.tracks;
      var html  = "";
      for (var i = 0; i < songs.length; i++) {
        var songName = songs[i].name;
        var href     = songs[i].href;
        html += "<li><a href =\"" + href + "\">" + songName + "</a></li>"
      }

      $("#results").html(html);
    });
  });


});
