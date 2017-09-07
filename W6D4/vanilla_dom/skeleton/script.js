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



  // adding SF places as list items

  // --- your code here!

  const formEl = document.querySelectorAll("div.list-container form")[0];
  formEl.addEventListener("submit", event => {
    event.preventDefault();

    const inputEl = document.getElementsByClassName("favorite-input")[0];
    const favPlace = inputEl.value;
    inputEl.value = "";

    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");
    li.textContent = favPlace;
    ul.appendChild(li);
  });
  // adding new photos

  // --- your code here!
  const toggleButtonEL = document.querySelectorAll("button")[0];
  toggleButtonEL.addEventListener("click", event => {
    event.preventDefault();

    const photoContainer = document.getElementsByClassName('photo-form-container')[0];
    if (photoContainer.className === "photo-form-container hidden") {
      photoContainer.className = "photo-form-container";
    } else {
      photoContainer.className = "photo-form-container hidden";
    }
  });

  const formPhotoEl = document.querySelectorAll("div.photo-form-container form")[0];
  formPhotoEl.addEventListener("submit", event => {
    event.preventDefault();

    const inputEl = document.getElementsByClassName("photo-url-input")[0];
    const urlInput = inputEl.value;
    inputEl.value = "";

    const ul = document.getElementsByClassName("dog-photos")[0];
    const li = document.createElement("li");
    const img = document.createElement("img");
    img.src = urlInput;
    li.appendChild(img);
    ul.appendChild(li);
  });
});
