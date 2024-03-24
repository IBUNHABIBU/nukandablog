import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pong"
export default class extends Controller {
  static targets = ["button"]
  connect() {
    this.toggle();
    console.log("Hello, Stimulus!", this.element);
  }

  toggle() {
    this.element.classList.toggle("open");
    console.log('toggle');
  }
}
