Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#index'
  get '/home' => 'static#show'
  resources :appearances
  resources :users
  resources :sessions
  resources :guests, only: [:index, :new, :create, :show ]
  resources :episodes, only: [:index, :show]
end
