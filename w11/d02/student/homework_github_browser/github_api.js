console.log('github_api loaded');

$(document).ready(function() {

  var form = $("form");
  var $userDiv = $(".user-info");

  form.on("submit", function(e) {
    e.preventDefault();
    var searchedUser = $(".username").val();
    $.ajax ({
      url: "https://api.github.com/users/" + searchedUser,
      type: "GET",
      dataType: "json",
    }).done(function(data){
      var name = data.name;
      var avatar = data.avatar_url;
      var usersImage = $("<img>").attr("src", avatar);
      var publicRepos = data.public_repos;
      var publicGists = data.public_gists;
      var usersReposAndGists = $("<p class = 'repos_gists'>").text(name + " has " + publicRepos.toString() + " public repos and " + publicGists.toString() + " public gists.");
      var usersName = $("<h1>").text(name);

      $userDiv.append(usersName);
      $userDiv.append(usersImage);
      $userDiv.append(usersReposAndGists);

    var button = $("<button class='check_repos'>").text("View this user's repos");
    $userDiv.append(button);

    $(".check_repos").on("click", function(e) {
     var searchedUser = $("#username_input").val();
     $.ajax({
       url: "https://api.github.com/users/" + searchedUser + "/repos",
       type: "GET",
       dataType: "json"
     }).done(function(data){
       var $results = $("<ul>");
       $userDiv.append($results);
       var html = "";
       for(var i = 0; i < data.length; i++) {
         var name = data[i].name;
         var href = data[i].html_url;
         html += "<li><a href=\"" + href + "\">" + name + "</a></li>";
       }
       $results.html(html);
     });
    });
  });
});
});
