Rails.application.routes.draw do
  devise_for :users
  root 'profiles#new', as: :home

  resources :profiles, only: [:new, :create, :edit, :update]
  resources :donations, only: [:new, :create]
end
