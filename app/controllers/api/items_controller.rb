class Api::ItemsController < ApiController
  before_action :authenticated?
  respond_to :json
=begin
  def index
    @items = Item.all
    render json: @items, each_serializer: ItemSerializer
  end
=end
  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :list_id)
  end

  end
