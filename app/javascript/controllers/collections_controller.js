import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="collections"
export default class extends Controller {
  static targets = [ "body-parts" ]
  connect() {
    console.log("Hello ")
  }
  updateForm() {
    console.log('Hi')
  }

}
