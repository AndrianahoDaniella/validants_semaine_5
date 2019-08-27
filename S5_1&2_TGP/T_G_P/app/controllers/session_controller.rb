class SessionController < ApplicationController
	def new
		#session = Session.new
	end
	def create
		# cherche s'il existe un utilisateur en base avec l’e-mail
		  user = User.find_by(email: params[:e])

		  # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
		  if user && user.authenticate(params[:p])
		    session[:user_id] = user.id
		    redirect_to accueil_index_path

		  else
		    flash.now[:danger] = 'Invalid email/password combination'
		    render :new
		  end
	end
	def destroy
		session.delete(:user_id)
		redirect_to root_path
	end
end
