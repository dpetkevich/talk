

	if (navigator.geolocation) {

 
  navigator.geolocation.getCurrentPosition(function(position) {
   var lat = $( '#latitude');
   var lon = $( '#longitude');
   lat.html(position.coords.latitude);
   lon.html(position.coords.longitude);
 
});
  
} else {
  alert("I'm sorry, but geolocation services are not supported by your browser.");
}









