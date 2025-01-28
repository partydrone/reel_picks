import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile-menu"
export default class extends Controller {
  static targets = ["menuButton", "closeButton", "menu"]
  
  connect() {
    console.debug("Connecting mobile menu controller…")
  }

  show() {
    console.debug("Showing mobile menu…")

    this.menuTarget.classList.remove("hidden")

    this.menuButtonTarget.classList.add("hidden")
    this.menuButtonTarget.classList.remove("block")

    this.closeButtonTarget.classList.remove("hidden")
    this.closeButtonTarget.classList.add("block")
  }

  hide() {
    console.debug("Hiding mobile menu…")

    this.menuTarget.classList.add("hidden")

    this.menuButtonTarget.classList.remove("hidden")
    this.menuButtonTarget.classList.add("block")

    this.closeButtonTarget.classList.add("hidden")
    this.closeButtonTarget.classList.remove("block")
  }

  toggle() {
    console.debug("Toggling mobile menu…")

    if (this.menuTarget.classList.contains("hidden")) {
      this.show()
    } else {
      this.hide()
    }
  }
}
