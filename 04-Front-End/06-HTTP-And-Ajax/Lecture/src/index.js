const button = document.querySelector('button');
const ul = document.querySelector('#results');

button.addEventListener('click', (event) => {
  event.preventDefault();

  const title = document.querySelector('#title').value;
  ul.innerHTML = '';
  searchOMDB(title)
});

const searchOMDB = (title) => {
  fetch(`http://www.omdbapi.com/?apikey=8691812a&s=${title}`)
  .then((response) => { return response.json(); })
  .then((data) => {
    data.Search.forEach((movie) => {
      const html = `<li class="list-inline-item">
        <img src="${movie.Poster}" alt="">
        <p>${movie.Title} - ${movie.Year}</p>
      </li>`;

      ul.insertAdjacentHTML('beforeend', html);
    });
  })
}







const placeInput = document.querySelector('#place');
placeInput.addEventListener('keyup', () => {
  const value = placeInput.value;
  algoliaRequest(value)
});



const algoliaRequest = (place) => {
  url = 'https://places-dsn.algolia.net/1/places/query';
  fetch(url, {
    method: 'POST',
    body: `{"query": "${place}"}`
    // body: JSON.stringify({ query: place })
  }).then(response => response.json())
    .then(data => { console.log(data) })
}





