Rails.application.routes.draw do
  root to: 'home#index'

  resources :collections, only: [:index, :create, :show]
  resources :cards, only: [:create]

  get 'cards/search/:name', to: 'cards#search'
end
