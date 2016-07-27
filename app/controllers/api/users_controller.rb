class Api::UsersController < ApiController
   before_action :authenticated?
   respond_to :json
   def index
     @users = User.all
     render json: @users, each_serializer: UserSerializer
   end

end
