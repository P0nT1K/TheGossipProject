Rails.application.routes.draw do
  get 'welcome/:first_name', to: 'welcome#welcome'
  get 'homepage', to: 'static#homepage'

  get 'contact', to: 'static#contact'
  get 'team', to: 'static#team'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
