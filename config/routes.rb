Rails.application.routes.draw do
  root to: 'home#index'

  resources :collections, only: [:index, :create, :show]
end
