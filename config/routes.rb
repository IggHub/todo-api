Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users #do
    #   resources :lists
    # end
  end
  devise_for :users
    resources :users

  root to: "home#index"
end
