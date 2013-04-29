class CommentsController < ApplicationController

	def index
		@comments = Comment.all
		render 'index'
	end

	def create
    @comment = Comment.new(params[:comment])
    @comment.save!
    render @comment
  end


end
