class AccueilController < ApplicationController
	def index
		if session[:user_id] == nil
			redirect_to root_path
		else
			@user = User.find(session[:user_id])
		end
	end
end
