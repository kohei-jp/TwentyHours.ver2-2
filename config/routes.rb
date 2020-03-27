Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'tops#index'
  namespace :tweets do
    resources :searches, only: :index
  end

  resources :tweets do
    resources :comments, only: :create
    resource :favorites, only: %i[create destroy]
  end

  resources :users do
    resource :relationships, only: %i[create destroy]
    get :follows, on: :member
    get :followers, on: :member
  end

  resources :maps, only: [:index]
  
end
