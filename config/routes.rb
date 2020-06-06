Rails.application.routes.draw do
  namespace :admin do
    resources :admins
    resources :itineraries
  end

  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }

  namespace :user do
    resources :users
    resources :itineraries
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
