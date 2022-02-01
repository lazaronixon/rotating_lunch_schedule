import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { events: Array }

  connect() {
    new FullCalendar.Calendar(this.element, {
      initialView: 'dayGridMonth',
      events: this.eventsValue,
      height: 650
    }).render();
  }
}
