class UsersController < ApplicationController

	def index

  	@user = User.find(params[:user_id])
  	
 	end
 	def show
 		@user = User.find(params[:id])
 	end
 	def new
 		@user = User.new
 	end
 	def create
 		if params[:p1] == params[:p2]
 		@user = User.create(first_name: params[:fn], last_name: params[:ln], email: params[:e], description: params[:d], city_id: params[:c], password: params[:p1])
 		 if @user.save
 		 	 flash[:success] = "L'utilisateur a été bien enregistré."
 		 	redirect_to new_session_path
 		 else
 		 	flash[:success] = "verifie ce que t'ecrit."
 		 	render :new
 		 end
 		else
 			flash[:success] = "Mot de passe erroné."
 			render :new
 		end
 	end
end
