Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  root to: 'session#new'
  post 'login' => 'session#login'

  get 'groups' => 'groups#new'
  post 'groups' => 'groups#create'

  get 'users' => 'users#new'
  patch 'users' => 'users#create'

  get 'role' => 'role#new'
  post 'role' => 'role#create'

  get 'games' => 'games#main'
end

