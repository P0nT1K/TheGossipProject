Rails.application.routes.draw do
  
  get 'static/home'
  #get 'sessions/new'
  #get 'session/new'
  #get 'session/create'
  #get 'session/destroy'
  #get 'comment/new'
  #get 'comment/show'
  #get 'comment/edit'
  #get 'gossips/edit'
  get 'cities/index'
  get 'welcome/:first_name', to: 'welcome#welcome'
  get 'contact', to:'static#contact'
  get 'team', to: 'static#team'
  resources :gossips
  resources :sessions, only: [:new, :create, :destroy]
  resources :users 
  resources :cities
  resources :comments 
  resources :gossips do
    resources :comments
  end
  root 'static#home'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
