class Instructor {
  constructor(name) {
    this.name = name
  }

  instructorEl() {
    return `
      <h2>${this.name}</h2>
    `
  }
}

