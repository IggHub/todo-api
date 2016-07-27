class Api::ListsController < ApiController
  before_action :authenticated?
  respond_to :json

  def index
#    @user = User.find(3).lists #need to make n in User.find(n).lists to correspond to users/n/lists! How to do that?
    @user = User.find_by(id: params[:user_id])
    @lists = @user.lists
    render json: @lists, each_serializer: ListSerializer
  end

  def show
    @list = List.find_all_by(params[:user_id])
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
