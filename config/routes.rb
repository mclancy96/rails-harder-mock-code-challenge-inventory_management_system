Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/posts', to: "posts#index", as: "posts"
  get '/authors', to: "authors#index", as: "authors"

  resources :products do
    resources :inventory_transactions, only: [:index, :create, :update, :destroy]
  end
  resources :warehouses do
    resources :inventory_transactions, only: [:index, :create, :update, :destroy]
  end
  resources :inventory_transactions, only: [:show]
end
