$(document).ready(function() {
	$('#search').change(function() {
		var searchTerm = $(this).val();
		var results = _.filter(items, function(item) { 
			var matchTerm = new RegExp(searchTerm);
			return item.name.match(matchTerm);			
		});

		$('.items-list').html("");
		
		_.each(results, function(result){
			//var html = _.template(render :partial => "todo_items/todo_item", :locals => {:todo_item => item});
		});
	});
});
