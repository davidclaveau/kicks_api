Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :disciplines
      resources :results
      resources :schedules
      resources :role_resources
      resources :resources
      resources :user_roles
      resources :roles
      resources :teams
      resources :users
    end
  end
  
  get :managers, to: "api/v1/teams#managers"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
