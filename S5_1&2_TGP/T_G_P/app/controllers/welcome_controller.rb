class WelcomeController < ApplicationController
	attr_accessor :id

	def index
		@gossip = Gossip.all
		@user = User.all
	end

#	def user.id
 #   @user = User.find(params[:id])
 # end


end
