var initialize = function(){
  var mapDiv = document.getElementById("main-map");
  var center = {lat: 51.10773, lng: 17.03533};
  var center1 = {lat: 48.208174, lng: 16.373819};
  var center2 = {lat: -37.810880, lng: 175.776461};
  var mainMap = new MapWrapper(mapDiv, center, 10);
  mainMap.addMarker(center, "Hello");
  mainMap.addMarker(center1, "Hello1");
  mainMap.addMarker(center2, "Hello3");
  mainMap.addClickEvent();
  var bounceButton = document.getElementById("button-bounce-markers");
  bounceButton.addEventListener("click", mainMap.bounceMarkers.bind(mainMap));

  var goToChicago = function(){
    var chicago = {lat: 41.878114, lng: -87.629798};
    mainMap.googleMap.setCenter(chicago);
  }

  var chicagoButton = document.getElementById("button-chicago");
  chicagoButton.addEventListener("click", goToChicago);

  var geolocateButton = document.getElementById("button-geolocate");
  geolocateButton.addEventListener("click", mainMap.geolocate);
}



window.addEventListener("load", initialize);
