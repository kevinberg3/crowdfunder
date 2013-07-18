class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save 
      flash[:notice] = "Account created"
      auto_login(@user)
      redirect_to root_path
    else
      flash[:error] = "Failed to register"
      redirect_to users_path
    end
  end

  
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :remember_me)
  end


end

