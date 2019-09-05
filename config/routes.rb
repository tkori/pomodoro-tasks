Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'tasks#index'
  resources :users, only: [:show]
  resources :tasks, only: [:index, :edit, :create, :update, :destroy]
end
