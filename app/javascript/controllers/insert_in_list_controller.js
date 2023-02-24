import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {

  connect() {
    console.log("this is the stimulus for accept or book request")

  }


  update(event){
    // We prevent the default submit behavior which would reload the entire page
    event.preventDefault()
    const form = event.target
    // // We create the review on the server
    const url = form.action
    fetch(url, {
      method: form.method,
      headers: { "Accept": "application/json" },
      body: new FormData(form)
    })
    .then(response => response.json())
    .then(data => {
      // We insert the new created review on the page
      if (data.booking_html) {
        this.element.outerHTML= data.booking_html
      }
    })
  }
}
