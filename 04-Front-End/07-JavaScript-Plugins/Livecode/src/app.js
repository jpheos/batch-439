// TODO: Build an awesome garage!
const list = document.querySelector('.cars-list');
const form = document.querySelector('#new-car');
const brandInput = document.querySelector('#brand');
const modelInput = document.querySelector('#model');
const plateInput = document.querySelector('#plate');
const ownerInput = document.querySelector('#owner');

const refreshCars = () => {
  fetch('https://wagon-garage-api.herokuapp.com/jose/cars')
    .then(response => response.json())
    .then(renderCars);
}

const renderCars = (cars) => {
  list.innerHTML = '';

  cars.forEach((car) => {
    const html = `<div class="car">
      <div class="car-image">
        <img src="http://loremflickr.com/280/280/${car.brand} ${car.model}" />
      </div>
      <div class="car-info">
        <h4>${car.brand} ${car.model}</h4>
        <p><strong>Owner:</strong> ${car.owner}</p>
        <p><strong>Plate:</strong> ${car.plate}</p>
        <p><a href="#" class="destroy-car" data-id="${car.id}">❌</a></p>
      </div>
    </div>`;

    list.insertAdjacentHTML('beforeend', html);
  });
};

const createCar = (car) => {
  fetch('https://wagon-garage-api.herokuapp.com/jose/cars', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(car)
  }).then(refreshCars)
}

const destroyCar = (id) => {
  fetch(`https://wagon-garage-api.herokuapp.com/cars/${id}`, {
    method: 'DELETE'
  }).then(refreshCars)
}

form.addEventListener('submit', (event) => {
  event.preventDefault();
  const car = {
    brand: brandInput.value,
    model: modelInput.value,
    owner: ownerInput.value,
    plate: plateInput.value
  }

  createCar(car);
});

list.addEventListener('click', (event) => {
  if (event.target.classList.contains('destroy-car')) {
    const id = event.target.dataset.id;
    destroyCar(id);
  }
})

refreshCars();
