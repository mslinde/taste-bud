import "../plugins/flatpickr";

import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';

import { initAutocomplete } from "../plugins/init_autocomplete.js";

initMapbox();

window.initAutocomplete = initAutocomplete
initAutocomplete()

//Below is for star rating on create review page
import { initStarRating } from '../plugins/init_star_rating';

initStarRating();

// New Time Picker for creating an event
import { NJTimePicker } from '../plugins/nj-timepicker';

// const items = document.querySelectorAll('.clickable');
// items.forEach(i => i.addEventListener("click", (event) => {
//   i.querySelector('input').checked = true;
//   i.querySelector('img').classList.toggle('active');

//   if (i.querySelector('input').value === i.dataset.vibeId) {
//     i.querySelector('input').checked = true;
//     i.querySelector('img').classList.add('active');
//   }

// }));


// "Cedric's code"
const items = document.querySelectorAll('.clickable');
items.forEach(i => i.addEventListener("click", (event) => {
  i.querySelector('input').checked = false;
  i.querySelector('img').classList.remove('active');

  if (i.querySelector('input').value === i.dataset.vibeId) {
    i.querySelector('input').checked = true;
    i.querySelector('img').classList.add('active');
  }

}));



// // My attempt
// const clickable = document.querySelectorAll(".clickable");
// clickable.forEach((element) => {
//   element.addEventListener("click", (event) => {
//     i.querySelector('input').checked = false;
//     element.classList.toggle("active");

//   if (i.querySelector('input').value === i.dataset.vibeId) {
//   }
//   });
// });

const clickable = document.querySelectorAll(".clickable");
clickable.forEach((element) => {
  element.addEventListener("click", (event) => {
    console.log(element)
    element.classList.toggle("active");
    element.querySelector('input').checked = false;
    if (element.querySelector('input').value === element.dataset.vibeId) {
    element.querySelector('input').checked = true;
  }
  });
});

