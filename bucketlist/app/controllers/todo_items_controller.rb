class TodoItemsController < ApplicationController

	def index
		@items = TodoItem.all
		render 'index'
	end

	def create
		@item = TodoItem.new(params[:todo_item])
		@item.save	
		render :partial => 'todo_items/todo_item', :locals => { :todo_item => @item }, :content_type => 'text/html'
	end

	def show
		@item = TodoItem.find(params[:id])	
	end
end
