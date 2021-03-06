Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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
  get 'history', to:  "transactions#history"
  get 'investments', to:  "transactions#investments"
  get 'getstarted', to: "pages#getstarted"
  get 'learnmore', to: "pages#learnmore"

root to: 'pages#index'
end
