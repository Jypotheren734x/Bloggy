Rails.application.routes.draw do
  get 'comment/new'

  get 'comment/create'

  get 'friend/add_friend'

  get 'friend/remove_friend'

  resources :user

  get 'home/index'

  get 'home/search'

  resources :post do
    resources :comments
  end

  resources :comment do
    resources :comments
  end

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      confirmation: 'users/confirmations',
      registrations: 'users/registrations'
  }, path: 'users', path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'secret',
      confirmation: 'verification',
      registration: 'register',
      sign_up: 'sign_up'
  }

  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
