Rails.application.routes.draw do
  root 'sessions#welcome'
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: "users#create"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to:  'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  resources :computers
  resources :users do
    # nested resource 
    resources :orders
  end

  resources :orders do 
    resources :computers
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
