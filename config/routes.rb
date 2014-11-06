Rails.application.routes.draw do
  devise_for :users
  get '/our_method', to: 'home#our_method'
  get '/press', to: 'testimonials#index'
  get '/press/new', to: 'testimonials#new'
  get '/collaborate', to: 'home#collaborate'
  resources :testimonials
  resources :collaborations
  root to: 'home#welcome'
end
