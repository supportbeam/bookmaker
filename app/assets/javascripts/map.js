function Map(mapId) {
  this.mapId = mapId;
  this.markers = [];
}

Map.prototype.init = function(latitude, longitude) {
  var options = {
    center: { lat: latitude, lng: longitude},
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }

  this.canvas = new google.maps.Map(this.mapId, options);
}

Map.prototype.addMarker = function(latitude, longitude, markerImage) {
  var options = {
    position: { lat: latitude, lng: longitude},
    map: this.canvas
  }

  if (markerImage) {
    options.icon = markerImage;
  }

  var myMarker = new google.maps.Marker(options);
  this.markers.push(myMarker);

}

$(document).on('page:load ready', function() {
  if ($('#map-canvas').length) {
    var latitude = $('#map-canvas').data('latitude');
    var longitude = $('#map-canvas').data('longitude');
    var customIconImage = "https://maps.google.com/mapfiles/ms/icons/yellow-dot.png"

    var myMap = new Map($('#map-canvas')[0]);
    myMap.init(latitude, longitude);
    myMap.addMarker(latitude, longitude, customIconImage);
  }
});