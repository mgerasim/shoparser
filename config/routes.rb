Rails.application.routes.draw do
  get 'parse/run'
  resources :alternatives
  resources :tovars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tovars#index'
  get    '/parse',   to: 'parse#run'
end
