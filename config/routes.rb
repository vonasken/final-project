Rails.application.routes.draw do
  get 'users/new'

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :listings
  resources :users
  resources :transactions
  resources :charges

  get '/temp', to: "listings#temp"

root to: 'pages#index'
end
