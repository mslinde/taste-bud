import "../plugins/flatpickr";

import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';

import { initAutocomplete } from "../plugins/init_autocomplete.js";

initMapbox();

window.initAutocomplete = initAutocomplete
initAutocomplete()


const items = document.querySelectorAll('.clickable');
items.forEach(i => i.addEventListener("click", (event) => {
  i.querySelector('input').checked = false;
  i.querySelector('img').classList.remove('active');

  if (i.querySelector('input').value === i.dataset.vibeId) {
    i.querySelector('input').checked = true;
    i.querySelector('img').classList.add('active');
  }
}));
