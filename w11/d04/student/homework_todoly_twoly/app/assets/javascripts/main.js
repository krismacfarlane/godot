$("document").ready(function(){
     var showTaskTemplate = $("#tasks-template").html();
     var generateTaskHTML = _.template(showTaskTemplate);

    $.ajax({
      url: "/tasks",
      type: "GET",
      dataType: "json"
    }).done(function(data){
     for(var i = 0 ; i < data.length; i++){
       var description  = data[i].description;
       var complete  = data[i].is_complete;
       var id           = data[i].id;
        var taskHTML = generateTaskHTML({ description: description, id: id, is_complete: complete});
      $(".task-list").append(taskHTML);
     };

    $("#save").on("click", function(e){
      console.log("clicked");
      e.preventDefault;
      var item = $("#input").val();
      $.ajax({
        url: "/tasks",
        type: "POST",
        dataType: "json",
        data: {task:{description: item, is_complete: false}};
      }).done(function(data){
        var taskHTML = generateTaskHTML(data);
        $(".task-list").append(taskHTML);
      });
    });
  });
});
