require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase

	context "A todo item" do
		setup do 
			@todo_item = TodoItem.create(:name => "Drink Picklebacks", :location => "618 Grand St.", :destination => @destinationx)
			@destination = Destination.create(:name => "New York")

		end
		
		should "put values in the lattiude and longitude" do
			assert_not_nil @todo_item.latitude
			assert_not_nil @todo_item.longitude
		end

		should ""
	end
end
