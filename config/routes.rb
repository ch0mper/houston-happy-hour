Rails.application.routes.draw do

  resources :secrets
  get 'secrets/show'
  root to: 'sessions#new'
  resources :bars
  resources :users
  resources :user_bars
  resources :sessions, only: [:create]
  get '/sessions', to: 'sessions#new'
  delete '/sessions', to: 'sessions#destroy', as: 'logout'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get '/visit/:id', to: 'bars#do_visit'
  get '/like/:id', to: 'bars#do_like'

  #to: 'userbar#create'

  # get '/search', to: 'bars#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
