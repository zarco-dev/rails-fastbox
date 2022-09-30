import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sign-up"
let type_user = document.querySelector(".usertype");

export default class extends Controller {


  static targets = ["users", "typeuser", "user", "driver", "licensefield", "bonuscode", "marco"]

  connect() {
    this.marcoTarget.classList.add("marco");
  }

  user() {
      if (this.userTarget.value === "user") {
        this.typeuserTarget.innerHTML = "Personal";
        this.licensefieldTarget.classList.add("ocultar");
        this.bonuscodeTarget.classList.remove("ocultar");
        this.usersTarget.classList.add("ocultar");
        this.marcoTarget.classList.remove("marco");
      }
  }

  driver() {
    if (this.driverTarget.value === "driver") {
      this.typeuserTarget.innerHTML = "Conductor";
      this.bonuscodeTarget.classList.add("ocultar");
      this.licensefieldTarget.classList.remove("ocultar");
      this.usersTarget.classList.add("ocultar");
      this.marcoTarget.classList.remove("marco");
      // type_user.value = "driver";
      type_user.value = "driver";
    }
  }
}
