Rails.application.routes.draw do

  get 'home/index'

  get 'home/search'

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      confirmation: 'users/confirmations',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
  }, path: 'users', path_names: {
      confirmation: 'verification',
      registration: 'register',
      sign_up: 'sign_up'
  }

  devise_scope :user do
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end

  resources :users, only: [:show, :edit, :update]

  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
