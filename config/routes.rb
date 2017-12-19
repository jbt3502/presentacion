Rails.application.routes.draw do

  resources :publications
  resources :users
  get 'sessions/new'

  resources :field_rents
  resources :services
  resources :promotions
  resources :ratings
  resources :comments
  resources :fields
  resources :locals
  resources :districts
  resources :personas
  resources :user_types

  resources :sessions, only: [:new, :create, :destroy]
  get '/sign_up', to: 'users#new', as: :sign_up
  get '/log_in', to: 'sessions#new', as: :log_in
  delete '/log_out', to: 'sessions#destroy', as: :log_out

  get 'page/index'
  root 'page#index'
  
end
