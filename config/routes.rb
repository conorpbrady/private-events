Rails.application.routes.draw do

  get '/login',      to:   'sessions#new'
  post '/login',     to:   'sessions#create'
  delete '/logout',  to:   'sessions#destroy'
  get '/signup',     to:   'users#new'
  post '/signup',    to:   'users#create'
  post 'events/new',  to:   'events#create'


  resources :users,  only: :show
  resources :events,  only: [:show, :create, :new, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
