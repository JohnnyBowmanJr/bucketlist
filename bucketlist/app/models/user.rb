class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :likes
  has_many :todo_items
  has_many :liked_items, :through => :likes, :class_name => 'TodoItem'
end
