class Comment < ActiveRecord::Base
  attr_accessible :body, :parent_id, :todo_item_id
end
