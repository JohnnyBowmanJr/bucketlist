class AddPositionToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :position, :integer, :default => 0
  end
end
