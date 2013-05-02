$(document).ready(function() {
	$('body').bind('ajax:success', function(e, data) {
			$('input#destination_name').val("");
	});
});