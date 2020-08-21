Rails.application.routes.draw do
  root 'pages#index'

  # TOP
  get 'pages/index'

  # Exhibitoinsの一覧と詳細ページ
  get '/exhibitions', to: 'exhibitions#index'
  get '/exhibitions/:id', to: 'exhibitions#show'

  # User
  # resources :users
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'
  get '/users/:id/edit', to: 'users#edit'
  put '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
end
