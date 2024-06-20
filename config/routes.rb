Rails.application.routes.draw do
  root 'board#index'
  get '/boards', to: 'board#index'
  post '/insert_board', to: 'board#create'
  get '/boards/:board_id', to: 'board#show'

  post '/insert_post', to: 'post#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
