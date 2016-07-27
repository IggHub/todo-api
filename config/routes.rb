Rails.application.routes.draw do
  namespace :api, defaults: { format: :json} do #supports JSON requests
    resources :users
  end

  resources :users
end
