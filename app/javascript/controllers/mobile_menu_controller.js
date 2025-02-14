import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mobile-menu"
export default class extends Controller {
  static targets = ["openMenuButton", "closeMenuButton", "menu"]
  
  connect() {
    console.debug("Connecting mobile menu controller…")
  }

  show() {
    console.debug("Showing mobile menu…")
    this.menuTarget.classList.remove("hidden")
    this._hideOpenMenuButton()
    this._showCloseMenuButton()
  }

  hide() {
    if (this.menuTarget.classList.contains("hidden")) return
    console.debug("Hiding mobile menu…")
    this.menuTarget.classList.add("hidden")
    this._hideCloseMenuButton()
    this._showOpenMenuButton()
  }

  toggle() {
    console.debug("Toggling mobile menu…")

    if (this.menuTarget.classList.contains("hidden")) {
      this.show()
    } else {
      this.hide()
    }
  }

  _hideCloseMenuButton() {
    this.closeMenuButtonTarget.classList.add("hidden")
    this.closeMenuButtonTarget.classList.remove("block")
  }

  _hideOpenMenuButton() {
    this.openMenuButtonTarget.classList.add("hidden")
    this.openMenuButtonTarget.classList.remove("block")
  }

  _showCloseMenuButton() {
    this.closeMenuButtonTarget.classList.remove("hidden")
    this.closeMenuButtonTarget.classList.add("block")
  }

  _showOpenMenuButton() {
    this.openMenuButtonTarget.classList.remove("hidden")
    this.openMenuButtonTarget.classList.add("block")
  }
}
