class ItemsController < ApplicationController

  def index
    @user = current_user
    @items = current_user.items
  end

  def show
    @user = current_user
    @lists = List.where(user_id: @user.id)
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:notice] = "Item was updated!"
      redirect_to items_path
    else
      flash.now[:alert] = "WRONG"
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
