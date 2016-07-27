class UsersController < ApplicationController
<<<<<<< HEAD
  attr_accessor :username, :email, :password

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
=======
  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
>>>>>>> ec3907124bb357f4a5e9005e76bb27b2f3f64d77
  end
end
