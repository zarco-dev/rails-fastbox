import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sign-up"

export default class extends Controller {


  static targets = ["users", "typeuser", "user", "driver", "licensefield", "bonuscode", "marco", "usertype"]

  connect() {
    this.marcoTarget.classList.add("marco");
  }


  user() {
    this.typeuserTarget.innerHTML = "Personal";
    this.licensefieldTarget.classList.add("ocultar");
    this.bonuscodeTarget.classList.remove("ocultar");
    this.usersTarget.classList.add("ocultar");
    this.marcoTarget.classList.remove("marco");
  }

  driver() {
    this.typeuserTarget.innerHTML = "Conductor";
    this.bonuscodeTarget.classList.add("ocultar");
    this.licensefieldTarget.classList.remove("ocultar");
    this.usersTarget.classList.add("ocultar");
    this.marcoTarget.classList.remove("marco");
    this.usertypeTarget.innerHTML = `<input required="required" value="driver" autocomplete="off" type="hidden" name="user[user_type]" id="user_user_type">`;
  }
}
