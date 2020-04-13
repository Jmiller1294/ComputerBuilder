Rails.application.routes.draw do
  get '/', to: 'sessions#welcome'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :orders
  resources :users
  resources :computers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
