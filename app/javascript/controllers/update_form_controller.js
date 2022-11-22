import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-form"
export default class extends Controller {
  static targets = ["seller"]
  connect() {
  }

  togglePart() {
    this.sellerTarget.classList.toggle("d-none")
  }
}
