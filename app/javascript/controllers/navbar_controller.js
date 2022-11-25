import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
  }
  updateNavbar() {
    if (window.scrollY >= 67) {
      this.element.classList.add("navbar-lewagon-scroll")
    } else {
      this.element.classList.remove("navbar-lewagon-scroll")
    }
  }
}
