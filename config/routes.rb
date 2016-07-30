Rails.application.routes.draw do
  ActiveModelSerializers.config.adapter = ActiveModelSerializers::Adapter::JsonApi
  namespace :api, defaults: { format: :json } do

     resources :users do
       resources :lists
     end

     resources :lists, only: [] do
       resources :items, only: [:create, :index, :show, :update]
     end

     resources :items, only: [:destroy]
   end
end
