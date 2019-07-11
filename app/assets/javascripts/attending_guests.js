$(function() {
  const $info = $(".attending_guests")
  $info.on("click", function(e){
    e.preventDefault();
    $.getJSON(this.href).done(function(response){
      const reservations = new ReservationFormatter(response)

      reservations.reservationsTemplate()

      const $ol = $("div.guests")

      // response.reservation.forEach(function(guest){
      //   console.log(response.reservation)
      //     // $ol.append(reservationEl)
      // })
    })
  })
})





