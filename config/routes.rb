Rails.application.routes.draw do
  resources :articles
  resources :users

  root 'users#index'
end
