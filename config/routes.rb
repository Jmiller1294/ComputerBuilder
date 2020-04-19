Rails.application.routes.draw do
  root 'sessions#welcome'
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: "users#create"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to:  'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  
  resources :users, only: [:new, :create, :show] do
    # nested resource 
    resources :orders, only: [:index, :new, :create]
  end

  resources :orders do 
    resources :computers, only: [:index, :new, :create]
  end
  resources :orders
  resources :computers

  namespace :admin do
    resources :stats, only: [:index]
  end


  get '/auth/:provider/callback' => 'sessions#omniauth'


  

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
