Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

  get 'friend/add_friend'

  get 'friend/remove_friend'

  resources :users, only: [:show, :edit, :update]

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
      registrations: 'users/registrations'
  }, path: 'users', path_names: {
      password: 'secret',
      confirmation: 'verification',
      registration: 'register',
      sign_up: 'sign_up'
  }

  devise_scope :user do
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end

  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
