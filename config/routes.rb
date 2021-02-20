Rails.application.routes.draw do

  
  root "sessions#home"

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  #login route
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  #logout route
  delete '/logout' => 'sessions#destroy'
  
  resources :comments
  resources :users do 
    resources :experiences, only: [:new, :create, :index]
  end
  resources :experiences do 
    resources :comments, only: [:new, :create, :index]
  end 
  resources :categories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
