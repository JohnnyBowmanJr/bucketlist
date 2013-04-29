class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.boolean :completed
      t.string :name

      t.timestamps
    end
  end
end
