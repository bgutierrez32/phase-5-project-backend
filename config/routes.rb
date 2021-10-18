Rails.application.routes.draw do
  resources :appointments, only:[:index, :show, :create]
  resources :shop_services
  resources :shops, only:[:index]
  resources :service_tags
  resources :user_locations
  resources :car_locations
  resources :locations, only:[:index, :show]
  resources :service_lists, only:[:index, :show]
  resources :services, only:[:index, :show]
  resources :cars, only:[:index, :show, :create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/me', to: 'users#show'
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
