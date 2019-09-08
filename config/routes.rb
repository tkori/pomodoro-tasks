Rails.application.routes.draw do
  devise_for :users
  root 'pomodoros#index'
  resources :users, only: [:show]
  resources :projects, only: [:create, :update, :destroy]
  resources :pomodoros, only: [:index, :create, :update, :destroy]
end
