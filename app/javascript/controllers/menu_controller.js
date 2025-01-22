import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menu"
export default class extends Controller {
  static targets = ["menu"]
  
  connect() {
    console.debug("Connecting menu controller…")
  }

  show() {
    console.debug("Showing menu…")
    this.menuTarget.classList.remove("hidden")
  }

  hide() {
    console.debug("Hiding menu…")
    this.menuTarget.classList.add("hidden")
  }
}
