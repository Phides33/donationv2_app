Rails.application.routes.draw do
  devise_for :users
  root 'donations#new'

  resources :donations, only: [:new, :create]
end
