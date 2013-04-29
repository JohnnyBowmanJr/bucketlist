class TodoItemsController < ApplicationController

	def index
		@items = TodoItem.all
		render 'index'
	end

	def create
		@todo_item = TodoItem.new(params[:comment])
		@todo_item.save
		render 'index'
	end

	def show
		@item = TodoItem.find(params[:id])
		render :show
	end
end
