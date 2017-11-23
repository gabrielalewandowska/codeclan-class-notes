var MapWrapper = function(container, coords, zoom){
  this.googleMap = new google.maps.Map(container, {
    center: coords,
    zoom: zoom
    });
    this.markers = [];
    this.bounceMarkers = this.bounceMarkers.bind(this);
    this.geolocate = this.geolocate.bind(this);
    this.moveMapToCurrentLocation = this.moveMapToCurrentLocation.bind(this);
}

MapWrapper.prototype.addMarker = function(coords, infoWindowContent){
  var marker = new google.maps.Marker({
    position: coords,
    map: this.googleMap
  });

marker.addListener("click", function(){
  infoWindow.open(this.map, this);
})

if(infoWindowContent){
  var infoWindow = new google.maps.InfoWindow({
    content: infoWindowContent
  })
}
this.markers.push(marker);
}


MapWrapper.prototype.addClickEvent = function(){
  google.maps.event.addListener(this.googleMap, "click", function(event){
    var lat = event.latLng.lat();
    var lng = event.latLng.lng();
    var center = {lat: lat, lng: lng};
    this.addMarker(center);
    console.log(event.latLng.lat());
  }.bind(this));
}

MapWrapper.prototype.bounceMarkers = function(){
  this.markers.forEach(function(marker){
    marker.setAnimation(google.maps.Animation.BOUNCE);
  })
}

MapWrapper.prototype.geolocate = function(){
  navigator.geolocation.getCurrentPosition(this.moveMapToCurrentLocation);
}

MapWrapper.prototype.moveMapToCurrentLocation = function(position){
  var center = {lat: position.coords.latitude, lng: position.coords.longitude};
  this.googleMap.setCenter(center);
  this.addMarker(center);
}
