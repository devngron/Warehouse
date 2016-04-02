Rails.application.routes.draw do
  root 'warehouses#index'

  resources :warehouses do
    resources :products
  end
end
