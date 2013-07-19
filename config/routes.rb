Crowdfunder::Application.routes.draw do
  get "images/create"
  get "images/index"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :projects do
      resources :pledges, only: [:new, :create]
  end


  namespace :my do
    resources :projects do
      resources :images
    end
  end
  

  get '/', to: 'static_page#index'
  
  resources :users
  resource :sessions, only: [:new, :create, :destroy]

  root to: 'static_page#index'

end
