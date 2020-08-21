import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['counterElement']

  connect() {
    setInterval(this.refresh, 1000);
  }

  refresh = () => {
    fetch('/restaurants', {
      headers: { 'Accept': 'application/json' }
    }).then(response => response.json())
      .then(data => {
        this.counterElementTarget.innerText = data.length
      });
  }
}
