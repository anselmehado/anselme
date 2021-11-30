Rails.application.routes.draw do

  resources :operations
  get 'sessions/new'
  resources :entres

  root "users#index"
  resources :users
  resources :users, only: [:new, :create, :show, :update, :edit]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
