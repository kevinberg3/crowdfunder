Crowdfunder::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  resources :projects do
    resources :pledges, only: [:new, :create]
  end

  get '/', to: 'static_page#index'
  
  root to: 'static_page#index'

  resources :users
  resource :sessions, only: [:new, :create, :destroy]
end
