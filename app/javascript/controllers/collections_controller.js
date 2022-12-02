import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="collections"
export default class extends Controller {
  static values = {
    body_part_services: Array
  }
  connect() {
    console.log("Hello ")
  }
  updateForm() {
    console.log('Hi')
  }

}
