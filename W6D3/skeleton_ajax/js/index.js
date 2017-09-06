console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  method: 'GET',
  url: "http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b",
  success(data) {
    console.log("ajax success");
    console.log(data);
  },
  error() {
    console.log("ajax failure");
  },
});
// Add another console log here, outside your AJAX request
console.log("end of ajax request");
