Rails.application.routes.draw do
  # 変更後
devise_for :users, controllers: {
  omniauth_callbacks: 'users/omniauth_callbacks',
  registrations: 'users/registrations'
}
  root  'tops#index'
  namespace :tweets do
    resources :searches, only: :index
  end

  resources :tweets do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
  end

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member # 追加
    get :followers, on: :member # 追加
  end
end
