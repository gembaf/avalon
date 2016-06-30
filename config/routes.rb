Rails.application.routes.draw do
  get 'games/:group_name' => 'games#main', as: :games_main

  get 'groups' => 'groups#new'
  post 'groups' => 'groups#create'

  get 'groups/:group_name/users' => 'users#new', as: :users
  patch 'groups/:group_name/users' => 'users#create'
end

