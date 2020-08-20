console.log('hehe');

import mapboxgl from 'mapbox-gl'; // or "const mapboxgl = require('mapbox-gl');"

const mapElement = document.querySelector('#map');

if (mapElement) {
  mapboxgl.accessToken = mapElement.dataset.apiKey;

  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/kevcha/cke14argi0jic19r2vp5hllq1', // stylesheet location
    center: [4.8357, 45.7640], // starting position [lng, lat]
    zoom: 12 // starting zoom
  });

  const coordinates = JSON.parse(mapElement.dataset.coordinates);

  const bounds = new mapboxgl.LngLatBounds();

  coordinates.forEach((coordinate) => {
    const popup = new mapboxgl.Popup().setHTML(coordinate.popup);
    const marker = new mapboxgl.Marker()
      .setLngLat([coordinate.lng, coordinate.lat])
      .setPopup(popup)
      .addTo(map);

    bounds.extend([ coordinate.lng, coordinate.lat ])
  })

  map.fitBounds(bounds, { padding: 20, maxZoom: 20, duration: 2000 });
}
