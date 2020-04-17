Rails.application.routes.draw do
  root 'sessions#welcome'
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: "users#create"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to:  'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'


  resources :users, only: [:show, :new, :create] do
    # nested resource 
    resources :computers
    resources :orders, only: [:show, :index, :new, :create, :edit, :update, :delete]
  end
  resources :orders
  resources :computers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
