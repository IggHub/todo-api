class ListsController < ApplicationController
  def index
#    @user = User.find(3).lists #need to make n in User.find(n).lists to correspond to users/n/lists! How to do that?
    @user = User.find_by(id: params[:user_id])#
    @lists = List.where(user_id: current_user.id).pluck(:name)
#    render json: lists #what does render do? Is this method overriding list/index.html.erb?
    #render json: @user #Why does json: @user displays null?
    #render js: "alert('Hello world!')"
  end


    private

    def list_params
      params.require(:list).permit(:name, :permission, :user_id)
    end

end
