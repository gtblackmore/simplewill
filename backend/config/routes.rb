Rails.application.routes.draw do
  resources :personal_properties
  resources :real_properties
  resources :children
  resources :spouses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
