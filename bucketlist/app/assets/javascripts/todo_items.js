$(document).ready(function() {
    // Clear the Todo item fields open a successful
    // Todo item form submit
    $('body').bind('ajax:success', function(e, data) {
        $('input#todo_item_name').val("");
        $('input#todo_item_location').val("");
    });

    $('body').on("click", ".like-button", function() {
        $(this).replaceWith('<div class="like-button"><img height="20" src="/assets/heart_icon_red_full.png" width="20" /></div>');
    });


    $('body').on("click", ".todo-item-title", function() {
        $(this).parents('.todo-item-bar').siblings('.toggle-comments').slideToggle();
        var latitude = $(this).parents('.todo-item-bar').siblings('.toggle-comments').find('.latitude').children('p').text();
        var longitude = $(this).parents('.todo-item-bar').siblings('.toggle-comments').find('.longitude').children('p').text();
        setCenter(latitude, longitude);
        console.log(latitude);
        console.log(longitude);
    });

    $('#sortable').sortable({
        update: function() {
            // get every input element on the page with a class of position
            var sorted_items = $('div.position');
            results = [];
            //iterate through each text field with class position for each
            //sorted_items. The value of this text field sets the value of 
            //sorted_items.position
            _.each(sorted_items, function(sorted_item, counter) {
                //$(sorted_item).val(counter);
                //$(sorted_item).find('.item-position').replaceWith("<div class='item-position'>" + counter + "</div>");
                //create "id" and set it to value of sorted_items.id
                var id = $(sorted_item).data("ar-id");
                //create an array of arrays, with each mini-array
                //equaling [id, position] for each sorted_items
                results.push([id, counter]);
            });
            $.ajax({
                url: "/todo_items/update_position",
                type: "POST",
                data: {results : results}
            });
        }
    });
});
