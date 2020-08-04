console.log("Hello from src/index.js!");


setTimeout(() => {

  const list = document.querySelector('#winners');

  // list.remove();

  list.insertAdjacentHTML('afterbegin', '<li>Deutschland</li>')

  console.log(list.innerText);


  const winners = document.querySelectorAll('#winners li');

  console.log(winners);

  winners.forEach((winner) => {
    winner.innerText = winner.innerText.toUpperCase();
  });



  const input = document.querySelector('#email');
  input.value = 'chuck@norris.com';


}, 1000);







const emailInput = document.querySelector('#email');
emailInput.addEventListener('keyup', (event) => {
  console.log(event);
});



const images = document.querySelectorAll('img');

images.forEach((image) => {
  image.addEventListener('click', (event) => {

    // debugger;

    console.log(event.currentTarget);

    image.classList.toggle('rounded-full');

  });
});








