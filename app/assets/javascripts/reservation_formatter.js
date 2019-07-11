'use strict';

class ReservationFormatter {
  constructor(reservations) {
    this.reservations = reservations
    this.createGuests()
  }

  createGuests() {
    this.reservations.forEach(function(guest) {
      const guestCount = guest.guests
      const name = guest.user.name
      new Guest(name, guestCount)
    })
  }

  reservationsTemplate() {
    const $ol = $("div.guests")
    Guest.all.forEach(function(guest) {
      $ol.append(`${guest.guestEl()}`)
    })
    // console.log(Guest.all[0].guestEl())

  }

  // Gather guest templates
  // create one new html template of ALL the reservations
}

      // const attendee = response.guest
      // const guestObject = new Guest (attendee.user.name, attendee.guest)
      // $ol.append(guestObject.reservationEl())
