const authorization = "Bearer sk_9d91e4ab40251a0b7cdaa2b994ff4853";
const emailInput = document.querySelector('#clearbitEmail');
const userName = document.querySelector('#userName');
const userEmail = document.querySelector('#userEmail');
const userBio = document.querySelector('#userBio');
const userLocation = document.querySelector('#userLocation');
const userAvatar = document.querySelector('img');

// Listen click on button
const button = document.querySelector('#clearbitSubmit');
button.addEventListener('click', (event) => {
  event.preventDefault();

  // Get input value
  const email = emailInput.value;

  // Ask clearbit for informations for this email
  askClearbit(email);
});

const askClearbit = (email) => {
  // Ask clearbit API
  const url = `https://person.clearbit.com/v1/people/email/${email}`;
  fetch(url, {
    headers: {
      Authorization: authorization
    }
  })
    .then(response => response.json())
    .then((results) => {
      const fullName = results.name.fullName;
      const bio = results.bio;
      const location = results.location;

      // Show information in DOM
      userName.innerText = fullName;
      userEmail.innerText = email;
      userBio.innerText = bio;
      userLocation.innerText = location;
      userAvatar.src = results.avatar;
    });
};
