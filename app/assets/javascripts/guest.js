'use strict';

class Guest {
  constructor(name, guestCount) {
    this.name = name
    this.guestCount = guestCount
    this.constructor.all.push(this)
  }

  guestEl() {
    return `
      <li>${this.name} ${this.guestCount}</li>
    `
  }
}

Guest.all = []
