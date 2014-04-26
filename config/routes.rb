SmacAngel::Application.routes.draw do

  resources :statuses


  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  post "create_session" => "sessions#create", :as => "create_session"
  post "become_angel" => "requests#become_angel", :as => "become_angel"
  get "requests/iframe" => "requests#iframe", :as => "request_iframe"
  get "admin/index" => "admin#index", :as =>"admin_index"
  get "admin/history" => "admin#history", :as => "request_history"
  resources :templates
  resources :emails
  resources :sockmonkeys
  resources :requests
  resources :users
  resources :sessions
  resources :password_resets
  
  root :to => "home#index"
end
