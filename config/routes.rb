Rails.application.routes.draw do
  get 'home/index'
  
  resources :users, only: [:new, :create]
  get 'show', to: 'users#show'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#delete'

  resources :events, only: [:new, :create, :show]
  get 'event', to: 'events#new'
  post 'event', to: 'events#create'
  

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
