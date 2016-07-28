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
    @user = User.find_by(id: params[:user_id])
    @list = @user.lists.find(params[:id])
    render json: @list, each_serializer: ListSerializer
  end

  def create
     @user = User.find_by(id: params[:user_id])
#    @list = @user.lists.build(list_params)

     @list = List.new(list_params)
    if @list.save
      render json: @list
    else
      render json: { errors: @list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :permission, :user_id)
  end

end
