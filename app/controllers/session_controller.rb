class SessionController < ApplicationController
	def home
		render 'home'
	end
	def login_attempt
  		authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
  		if authorized_user
  			session[:user] = Hash.new
    		session[:user] = [:user_id => authorized_user.id, :username => authorized_user.username]
    		flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
    		redirect_to(:action => 'home')
  		else
    		flash[:notice] = "Invalid Username or Password"
    		flash[:color]= "invalid"
    		render "login"	
    	end
	end
	def logout
		session.delete(:user)
		redirect_to '/logged_out'
	end
	def logged_out
		render 'logged_out'
	end
end
