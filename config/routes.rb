Rails.application.routes.draw do
  root 'sessions#welcome'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to:  'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'


  resources :users, only: [:show] do
    # nested resource 
    resources :computers, only: [:show, :index]
    resources :orders, only: [:show, :index]
  end
  resources :orders
  resources :computers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
