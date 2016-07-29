class Api::ItemsController < ApiController
  before_action :authenticated?
  respond_to :json

  def index
    @items = Item.all
    render json: @items, each_serializer: ItemSerializer
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      render json: item
    else
      render json: {errors: item.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :completed, :list_id)
  end

  end
