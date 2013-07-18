Crowdfunder::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  
  resources :projects

  get '/', to: 'static_page#index'
  
  root to: 'static_page#index'

  resources :users
  resources :sessions
end
