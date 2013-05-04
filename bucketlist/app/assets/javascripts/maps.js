var map;

function initMap() {
	var myLatLng = new google.maps.LatLng(40.73, -73.99);

	var mapOptions = {
		center: myLatLng,
		zoom: 12,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map($("#map-canvas")[0], mapOptions);

// google.maps.event.addListener(map, "center_changed", function() {
// 	clearTimeout(timer);
// 	timer = setTimeout(function() {
// 		$.ajax({
// 			url: '/todo_items',
// 			data: {
// 				latitude: map.getCenter().lat(),
// 				longitude: map.getCenter().lng()
// 			},
// 			contentType: 'text/javascript',
// 			beforeSend: function(xhr) {
// 				xhr.setRequestHeader('accept', 'text/javascript');
// 				// this number at the end is the timer
// 				}
// 		});
// 		//getCrimeStats(map.getCenter().lat(), map.getCenter().lng());
// 	});
// });
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


