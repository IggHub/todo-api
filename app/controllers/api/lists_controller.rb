class Api::ListsController < ApiController
  before_action :authenticated?
  respond_to :json

=begin  def index
    @lists = List.all
    render json: @lists, each_serializer: ListSerializer
  end
=end
  def show
    @list = List.find_by(params[:user_id])
    render json: @list, each_serializer: ListSerializer
  end

  def create
    @list = List.new(list_params)
    if @list.save
      render json: @list
    else
      render json: { errors: @list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def list_params
    params.require(:lists).permit(:name)
  end

end
