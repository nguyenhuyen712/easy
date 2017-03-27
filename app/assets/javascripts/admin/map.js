$(document).ready(function(){
  $('#restaurant-map').locationpicker({
    inputBinding: {
      latitudeInput: $('#restaurant-lat'),
      longitudeInput: $('#restaurant-long'),
      locationNameInput: $('#restaurant-address')
    },
    enableAutocomplete: true
  });
});
