'use strict';

class SpinClass {
  constructor(response){
    this.id = response.id
    this.name = response.name
    this.studioId = response.studio_id

  }

  toHtml() {
    return `
    <li class="list-group-item">${this.name}
      <a href="/spin_classes/${this.id}/reservations/new">Join</a>
    </li>
    `
  }
}
