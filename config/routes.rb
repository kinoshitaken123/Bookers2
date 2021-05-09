Rails.application.routes.draw do

  get '/home/about' => 'users#about', as: "about"
  devise_for :users

  resources :users, only: [:index, :show, :edit, :update]

  resources :books

 end