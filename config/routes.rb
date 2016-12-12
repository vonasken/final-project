Rails.application.routes.draw do

  get 'users/new'

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/share' => 'share#index'
  get '/share/clear' => 'share#clearShare'
  get '/share/:id' => 'share#add'

  resources :listings
  resources :users
  resources :transactions
  resources :charges

  get '/temp', to: "listings#temp"
  get '/linkbank', to: "transactions#linkbank"

root to: 'pages#index'
end
