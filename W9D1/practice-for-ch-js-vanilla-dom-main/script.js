document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });


  const sfPlacesSubmit = document.getElementsByClassName('favorite-submit');
  
  sfPlacesSubmit.addEventListener('submit', event => { //says "not a function"
    event.preventDefault();

    const sfPlacesInput = document.getElementsByClassName('favorite-input');
    const sfPlacesName = sfPlacesInput.value;
    sfPlacesInput.value = '';

    const ul = document.getElementById('sf-places');
    const li = document.createElement('li');
    li.textContent = sfPlacesName;
    ul.appendChild(li);
  })

  // Your code here

  
  // adding new photos

  // Your code here
});