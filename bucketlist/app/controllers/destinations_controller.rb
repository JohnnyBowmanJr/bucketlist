class DestinationsController < ApplicationController

	def create
		@destination = Destination.new(params[:destination])
		@destination.save
		#render 'index'
		render :template => 'destinations/create', :content_type => 'text/javascript', :locals => {:destination => @destination}
	end

end
