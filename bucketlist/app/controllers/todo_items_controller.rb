class TodoItemsController < ApplicationController

	def index
		items_order = params[:order] || :created_at
		@items = TodoItem.order(items_order).all

		respond_to do |format|
			format.html {
			}
			format.js {
				render :template => 'todo_items/items', :locals => { :items => @items }
			}
		end	
	end

	def create
		@item = TodoItem.new(params[:todo_item])
		@item.save!
		render :template => 'todo_items/create', :content_type => 'text/javascript', :locals => {:item => @item}
	end

	def show
		@item = TodoItem.find(params[:id])	
	end
end
