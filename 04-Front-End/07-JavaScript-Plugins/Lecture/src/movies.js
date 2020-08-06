const list = document.querySelector('#results');

const insertMovies = (data) => {
  list.innerHTML = '';
  data.Search.forEach((result) => {
    const movie = `<li>
      <img src="${result.Poster}" alt="" />
      <p>${result.Title}</p>
    </li>`;
    list.insertAdjacentHTML('beforeend', movie);
  });
};

const fetchMovies = (query) => {
  fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then(insertMovies)
};

const initMovies = () => {
  const form = document.querySelector('#search-form');
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const input = document.querySelector('#search-input');
    fetchMovies(input.value);
  });

  // fetchMovies('harry potter'); // on 1st page load
}

export { initMovies };
