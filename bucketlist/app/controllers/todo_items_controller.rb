class TodoItemsController < ApplicationController

	def index
		items_order = params[:order] || params[:created_at] || params[:position] || :position
		# items_order = :position
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
		# assign all the todo_item values created in the todo
		# form to a new TodoItem object. Assign the new object
		# to a variable called @item.
		@item = TodoItem.new(params[:todo_item])
		#save all the new attributes I just put in @item.
		@item.save!
		# send an ajax request to create.js.erb, passing a 
		# variable named "item" which is equal to the @item object
		# i just saved.
		render :template => 'todo_items/create', :content_type => 'text/javascript', :locals => {:item => @item}
	end

	def update_position
    results = params["results"]

    results.each do |i, result|
      
      item = TodoItem.find(result[0])
      item.position = result[1].to_i
      item.save
    end
    render :text => "nice one matey"
  end

  def like
  	item = TodoItem.find(params[:id])
		Like.create(:todo_item_id => item.id, :user_id => session[:user_id])
		#render :template => 'todo_items/like', :content_type => 'text/javascript', :locals => {:item => item}
		render :nothing => true 
	end

	def show
		@item = TodoItem.find(params[:id])	
	end
end
