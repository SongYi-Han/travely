var places = require('places.js');

(function () {
  var placesAutocomplete = places({
    appId: "plDDGICMPN9W",
    apiKey: "046ed8164fb4e498d7148e6fe9e6d424",

    container: document.querySelector('#city-input'),

  }).configure({
    type: 'city',
    aroundLatLngViaIP: false,
  });
})();
