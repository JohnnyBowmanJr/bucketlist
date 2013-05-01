class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def create
    @comment = Comment.new(params[:comment])
    @comment.save!
  	# respond_to do |format|
  	# 	format.html
  	# 	format.js
    		render :template => 'comments/create', :content_type => 'text/javascript'
		# 	end
		# end
  end
end
