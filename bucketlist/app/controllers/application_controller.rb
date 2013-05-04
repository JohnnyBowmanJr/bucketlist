class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_default_user

	def load_default_user
		session[:user_id] = User.first.id
	end

end
