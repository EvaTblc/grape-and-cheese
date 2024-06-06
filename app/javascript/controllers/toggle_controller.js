import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "addBtn", "back"]

  fire() {
    console.log("ok");
    this.togglableElementTarget.classList.toggle("d-none");
    this.addBtnTarget.classList.toggle("d-none");
  }
}
