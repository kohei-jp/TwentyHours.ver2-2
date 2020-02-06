Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index'
  namespace :tweets do
    resources :searches, only: :index
  end
  resources :tweets do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
