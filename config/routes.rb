Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :disciplines
      resources :resources
      resources :results
      resources :role_resources
      resources :roles
      resources :rosters
      resources :schedules
      resources :teams
      resources :users
      resources :user_roles
    end
  end
  
  get :managers, to: "api/v1/teams#managers"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
