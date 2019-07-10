class Reservation {
  constructor(spinClassId) {
    console.log(this)
    this.id = this.constructor.all.length
    this.spinClass = this.findSpinClass(parseInt(spinClassId))
    this.constructor.all.push(this)

  }
}

Reservation.all
