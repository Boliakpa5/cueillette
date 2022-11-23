import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-form"
export default class extends Controller {
  static targets = ["seller", "checkbox"]

  connect() {
    if (this.checkboxTarget.checked) {
      this.sellerTarget.classList.remove("d-none")
    }
  }

  togglePart() {
    this.sellerTarget.classList.toggle("d-none")
  }
}
