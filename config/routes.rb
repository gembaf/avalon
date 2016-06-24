Rails.application.routes.draw do
  root to: 'game#new'
  post 'game' => 'game#create', as: :game_create
  get 'game' => 'game#main', as: :game_main
end

