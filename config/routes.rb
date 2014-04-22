
SmacAngel::Application.routes.draw do

  resources :statuses


  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :templates
  resources :emails
  resources :sockmonkeys
  resources :requests
  resources :users
  resources :sessions
  resources :password_resets
end

