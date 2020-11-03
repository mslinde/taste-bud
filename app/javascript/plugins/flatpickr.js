import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!

flatpickr(".datepicker", {
    // defaultDate: Date.today
    // minDate: "today",
    // maxDate: "today",
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    time_24hr: true,
})
