Rails.application.routes.draw do
  get '/exhibitions', to: 'exhibitions#index'
  get '/exhibitions/:id', to: 'exhibitions#show'

  resources :users
end
