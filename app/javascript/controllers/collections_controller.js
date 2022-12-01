import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="collections"
export default class extends Controller {
  connect() {
    console.log("hello")
  }
}
