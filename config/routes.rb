Rails.application.routes.draw do
<<<<<<< HEAD
  namespace :api, defaults: { format: :json} do #supports JSON requests
    resources :users
  end

  resources :users
=======
  namespace :api, defaults: { format: :json} do
    resources :users
  end
>>>>>>> ec3907124bb357f4a5e9005e76bb27b2f3f64d77
end
