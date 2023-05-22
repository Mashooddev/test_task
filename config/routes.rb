Rails.application.routes.draw do
  resources :line_items
  resources :order_line_items
  resources :orders
  resources :customers
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
