require 'test_helper'

class TodoItemsControllerTest < ActionController::TestCase

  context "The TodoItems Controller" do
  	setup do
  		3.times { TodoItem.create }
  	end

  	context "GET to index" do
  		setup do
  			get :index
			end

			should "give a HTTP 200" do
				assert_response :success
			end

			should "give me 3 todo items" do
				assert_equal 3, assigns(:items).length
				assert_equal TodoItem, assigns(:items).first.class
			end
		end

		context "GET to show" do
			setup do
				get :show, :id => 1
			end

			should "give a HTTP 200" do
				assert_response :success
			end

			should "give me 1 todo item" do
				assert_equal TodoItem.find(1), assigns(:item)
			end		
		end
	end
end
