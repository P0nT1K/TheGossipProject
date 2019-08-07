Rails.application.routes.draw do
  
  get 'gossips/edit'
  get 'cities/index'
  get '/welcome/:first_name', to: 'welcome#welcome'
  get '/contact', to:'static#contact'
  get '/team', to: 'static#team'
  resources :gossips
  resources :users 
  resources :cities
  root 'gossips#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
