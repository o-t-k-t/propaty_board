Rails.application.routes.draw do
  root to: 'propaties#index'
  resources :propaties
end
