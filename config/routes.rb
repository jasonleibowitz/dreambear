Rails.application.routes.draw do
  devise_for :users
  get '/our_method', to: 'home#our_method'
  get '/press', to: 'home#press'
  get '/collaborate', to: 'home#collaborate'
  root to: 'home#welcome'
end
