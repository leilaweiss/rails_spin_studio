$(function() {
  const $info = $(".attending_guests")
  $info.on("click", function(e){
    e.preventDefault();
    $.getJSON(this.href).done(function(response){
      const reservations = new ReservationFormatter(response)

      reservations.reservationsTemplate()
    })
  })
})


// $.ajax({
//   method: "GET",
//   dataType: "JSON",
//   url: "/spin_class/45/reservations"
// })


