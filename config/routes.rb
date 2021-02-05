Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/health', to: 'health#health'

  root "orders#index"

  resources :stores
  resources :products
  resources :orders
end
