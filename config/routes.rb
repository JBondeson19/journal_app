Rails.application.routes.draw do
  
  resources :client_admins
  resources :admins
  resources :clients

  resources :users, only: [:new, :create]

  get "/about", to: "application#about"
  
  get "/login", to: "users#login"
  post "/login", to: "users#process_login"
  get "/logout", to: "users#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
