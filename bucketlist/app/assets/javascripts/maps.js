var map;

function initMap() {
	var myLatLng = new google.maps.LatLng(40.73, -73.99);

	var mapOptions = {
		center: myLatLng,
		zoom: 12,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map($("#map-canvas")[0], mapOptions);
}

function addMarker(latitude, longitude, title) {
	var marker = new google.maps.Marker({
		position: new google.maps.LatLng(latitude, longitude),
		map : map,
		title : title
	});
}

function setCenter(latitude, longitude) {
	var centerLatLng = new google.maps.LatLng(latitude, longitude);
	var center = map.setCenter(centerLatLng);
}

// 	var mapOptions = {
// 		center: new google.maps.LatLng(40.73, -73.99);
// 		zoom: 12,
// 		mapTypeId: google.maps.MapTypeId.ROADMAP
// 		};
// 	map = new google.maps.Map($("#map-canvas")[0], mapOptions);
// 	setCenter(latlng:45.73, -73.99)
// }