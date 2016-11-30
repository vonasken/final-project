Rails.application.routes.draw do
  get 'users/new'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :listings

root to: 'pages#index'
end
