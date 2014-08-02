# the Users controller

class UsersController < ApplicationController
  # GET /users
  def new
  	@user = User.new
  end

  def create
    # params gathers them into a hash
    @user = User.new(user_params)

  	if @user.save
  		redirect_to root_url, :notice => "Signed up!"
  	else 
  		render "new", alert: 'User could not be created'
  	end
  end

  def edit 
    @user = User.find(user_params[:user_id])
  end

  # GET /users
  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :avatar, :password, :password_confirmation)
  end
end
