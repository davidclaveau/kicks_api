Rails.application.routes.draw do
  resources :disciplines
  resources :results
  resources :schedules
  resources :role_resources
  resources :resources
  resources :user_roles
  resources :roles
  resources :teams
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
