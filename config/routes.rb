Rails.application.routes.draw do

  root 'users#home'
  get '/home/about' => 'users#about', as: "about"
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  resources :users, only: [:index, :show, :edit, :update]

  resources :books
  
 end