class Api::UsersController < ApiController
  before_action :authenticated? #refer to authenticated? -> ensures that user and password are present
  respond_to :json
   def index
<<<<<<< HEAD
     @users = User.all
     render json: @users, each_serializer: UserSerializer
=======
     users = User.all #return json reps of ALL users
     render json: users, each_serializer: UserSerializer #see? Note users is User.all
>>>>>>> ec3907124bb357f4a5e9005e76bb27b2f3f64d77
   end


end
