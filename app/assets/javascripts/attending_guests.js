$(document).ready(function(){
  $("a.attending_guests").on("click", function(e) {

    $.ajax({
      method: "GET",
      url: this.href,
    }).done(function(response) {
      $("div.guests").html(response)
    });

    e.preventDefault();
  })

})


