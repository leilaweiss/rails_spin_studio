$(document).ready(function(){
  $("a.attending_guests").on("click", function(e) {
    e.preventDefault();


    // $.ajax({
    //   method: "GET",
    //   url: this.href,
    // }).done(function(response) {
    //   $("div.guests").html(response)

    // });
    $.get(this.href).done(function(json) {
      console.log(json)

      var $ol = $("div.guests ul")
      $ol.html("")

    json.forEach(function(guest){
      $ol.append("<li>" + guest.guests + "</li>");
      })


    })
  })

})


