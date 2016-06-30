Rails.application.routes.draw do
  root to: 'games#new'
  post 'login' => 'games#login', as: :login
  get 'games/:group_name/:user_name' => 'games#main', as: :games_main

  get 'groups' => 'groups#new'
  post 'groups' => 'groups#create'

  get 'groups/:group_name/users' => 'users#new', as: :users
  patch 'groups/:group_name/users' => 'users#create'
end

