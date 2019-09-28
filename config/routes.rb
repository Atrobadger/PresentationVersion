Rails.application.routes.draw do
  
  root 'site_pages#home'
  get '/home', to: 'site_pages#home'
  get '/profile', to: 'site_pages#profile'
  get '/listings', to: 'site_pages#listings'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  post '/listings', to: 'site_pages#movePrivate'
  post '/home', to: 'site_pages#movePublic'
  
  get '/newlisting', to: 'shifts#new'
  post '/newlisting', to: 'shifts#create'
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users
  resources :shifts
end
