import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="usergifts"
export default class extends Controller {
  static targets = ["checkbox", "userSearch", "form", "input", "listUser"]
  check() {
    this.userSearchTarget.classList.toggle("d-none")
  }

  update (event) {
    event.preventDefault
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listUserTarget.outerHTML = data
      })
  }

}
