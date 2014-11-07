Rails.application.routes.draw do
  devise_for :users
  get '/our_method', to: 'home#our_method'
  get '/press', to: 'testimonials#index'
  get '/press/new', to: 'testimonials#new'
  get '/collaborate', to: 'collaborations#index'
  get '/collection/new', to: 'items#new'
  get '/collection/:id', to: 'items#index'
  resources :testimonials
  resources :collaborations
  resources :items
  root to: 'home#welcome'
end
