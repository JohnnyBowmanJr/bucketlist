class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def create
    # Comment.new creates a new comment.
    #(params[:comment] take all the form data (which is in the params hash) 
    # and assigns it to Comment.new
    @comment = Comment.new(params[:comment])
    @comment.save!

    # send an ajax request to create.js.erb in the comments view folder,
    # passing along a variable called "comment" that's equal to the @comment
    # object I just created.
		render :template => 'comments/create', :content_type => 'text/javascript', :locals => {:comment => @comment}
		
  end
end
