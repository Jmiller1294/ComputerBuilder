Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get '/signup', to: 'users#new'
  get 'login', to: 'users#show'

  resources :orders
  resources :users
  resources :computers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
