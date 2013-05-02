$(document).ready(function() {

	$('body').bind('ajax:success', function(e, data) {
		$('input#todo_item_name').val("");
        $('input#todo_item_location').val("");

	});

	$('body').on("click", ".todo-item-title", function() {
    $(this).siblings('.toggle-comments').slideToggle();
    var latitude = $(this).siblings('.toggle-comments').find('.latitude').children('p').text();
    var longitude = $(this).siblings('.toggle-comments').find('.longitude').children('p').text();
    setCenter(latitude, longitude);
    console.log(latitude)
    console.log(longitude)
  });


});
