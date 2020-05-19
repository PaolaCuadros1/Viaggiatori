Rails.application.routes.draw do
  namespace :admin do
    resources :admins
  end

  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
