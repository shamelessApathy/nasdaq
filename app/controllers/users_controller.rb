class UsersController < ApplicationController
 
def match_password(login_password="")
  encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
end
  def new
  	@user = User.new
  end
  def index
  	@users = User.all
  	render "index"
  end
  def create
  	@user = User.new(allowed_params)
  	if @user.save
  		flash[:notice] = "You signed up successfully"
  		flash[:color] = "valid"
  	else
  		flash[:notice] = "Form is invalid"
  		flash[:notice] = 'invalid'
  	end
  	redirect_to 'users'
  end
  def allowed_params
  params.require(:user).permit(:username, :email, :password)
end  
end
