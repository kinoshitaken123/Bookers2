Rails.application.routes.draw do

  devise_for :users
  root "homes#top"
  get '/home/about'

  resources :users, only: [:index, :show, :edit, :update]

  resources :books

 end