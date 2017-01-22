Rails.application.routes.draw do
  root to: "orders#index"
  resources :orders
  resources :ingredients
  resources :hoagies
  resources :main, only: [:show]
  get "index", to: "main#index"  
  get "order", to: "orders#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
