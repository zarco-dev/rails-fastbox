import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
  }

  updateNavbar() {
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.toggle("navbar-lewagon-gray")
    } else {
      this.element.classList.remove("navbar-lewagon-gray")
    }
  }
}
