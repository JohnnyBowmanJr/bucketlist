
function drawDonut(data) {
	new Morris.Donut({
		// ID of the element in which to draw the chart.
		element: '#chart',
		data: [
			{label: "Download Sales", value: 12},
			{label: "In-Store Sales", value: 30},
			{label: "Mail-Order Sales", value: 20}
		]
	});
}

// function getCrimeStats(lat, lng) {
// 	$.ajax({
// 		url '/crime/stats'
// 		data: {
// 			latitude: lat,
// 			longitude: lng
// 			},
// 	success: function(json) {