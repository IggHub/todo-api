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
  end
end
