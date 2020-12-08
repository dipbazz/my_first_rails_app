Rails.application.routes.draw do
  root 'cars#index'
  resources :cars
  resources :owners
end
