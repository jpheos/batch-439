import places from 'places.js';
// const places = require('places.js');


const algolia = document.querySelector('#address-input');

if (algolia) {
  places({
    // appId: 'YOUR_PLACES_APP_ID',
    // apiKey: 'YOUR_PLACES_API_KEY',
    container: algolia
  });
}
