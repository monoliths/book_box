Rails.application.routes.draw do
  resources :books
  devise_for :users
  get 'dashboard', to: 'pages#dashboard'
  root 'pages#home'

  post '/buy/:id', to: 'transactions#create', as: :buy
  get '/pickup/:guid', to: 'transactions#pickup', as: :pickup
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
