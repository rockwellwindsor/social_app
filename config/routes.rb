Rails.application.routes.draw do

  resources :map_tiles_subscriptions
  resources :map_tiles
  resources :map_categories
  resources :maps
  resources :likes
  resources :mentions
  resources :icons
  resources :notes
  resources :notifications
  resources :links
  resources :space_subscriptions
  resources :documents
  resources :comments
  resources :posts
  resources :spaces
  resources :space_types
  resources :participants
  resources :messages
  devise_for :users
    root 'pages#profile'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
