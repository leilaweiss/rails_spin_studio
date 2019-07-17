class Instructor {
  constructor(name) {
    this.name = name
  }

  instructorEl() {
    return `
      <h4>${this.name}</h4>
    `
  }
}

