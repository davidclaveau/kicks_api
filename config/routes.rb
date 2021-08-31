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

  # Routes for logging in and session storing
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  get :managers, to: 'api/v1/teams#managers'

  get '/user_search', to: 'api/v1/users#search'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
