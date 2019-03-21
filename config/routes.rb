Rails.application.routes.draw do
  resources :videos
  devise_for :users
  root to: 'home#index'
end
