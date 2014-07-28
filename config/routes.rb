SampleApp::Application.routes.draw do 
  get 'users/new'

  match '/signup',  :to => 'users#new', :via => [:get, :post]
  
  match '/contact', :to => 'pages#contact', :via => [:get, :post]
  match '/about', :to => 'pages#about', :via => [:get, :post]
  match '/help', :to => 'pages#help', :via => [:get, :post]
  root :to => 'pages#home'
  # You can have the root of your site routed with "root" 
  # just remember to delete public/index.html.
  # root :to => "welcome#index"
end
