$(document).ready(function() {

	$('body').bind('ajax:success', function(e, data) {
		$('.items-list').append(data);
		$('input#todo_item_name').val("");

	});

	$('body').on("click", ".todo-item-title", function() {
    $(this).siblings('.comments-box').slideToggle();
  });
});

