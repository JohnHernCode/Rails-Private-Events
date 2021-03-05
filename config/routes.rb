Rails.application.routes.draw do
  
  resources :users, only: [:new, :create]
  get 'sessions/new'
  get 'sessions/create'

  
  

  
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
