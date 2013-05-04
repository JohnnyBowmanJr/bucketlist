class Like < ActiveRecord::Base
  attr_accessible :title, :body, :todo_item_id, :user_id

  belongs_to :user
  belongs_to :todo_item
end
