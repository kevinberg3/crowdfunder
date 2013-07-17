Crowdfunder::Application.routes.draw do
 
  resources :projects

  get '/', to: 'static_page#index'
  
  root to: 'static_page#index'
end
