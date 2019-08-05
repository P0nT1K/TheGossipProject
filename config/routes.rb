Rails.application.routes.draw do
  get 'identify', to: 'static#identify'
  get '/gossip/user/:id', to: 'static#user'
  resources :user, controller: "user"
  get 'gossip/:index', to: 'static#gossip'
  resources :gossip , controller: "gossip"
  get 'welcome/:first_name', to: 'welcome#welcome'
  get 'contact', to: 'static#contact'
  get 'team', to: 'static#team'
  root 'static#homepage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
