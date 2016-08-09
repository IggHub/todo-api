class UsersController < ApplicationController
  #attr_accessor :name, :email, :password

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

  end


  def index
  end

  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
