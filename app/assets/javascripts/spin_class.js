'use strict';

class SpinClass {
  constructor(response){
    this.id = response.id
    this.name = response.name
    this.studioId = response.studio_id

  }

  addToPage() {
    $(`#studio_${this.studioId}_spin_classes`).append(this.toHtml())
  }

  toHtml() {
    return `
    <li class="list-group-item">${this.name}
      <a href="/spin_classes/${this.id}/reservations/new">Join</a>
    </li>
    `
  }
}
