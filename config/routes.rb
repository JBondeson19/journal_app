Rails.application.routes.draw do
  resources :client_admins
  resources :admins
  resources :clients



  get "/about", to: "application#about"
  get "/home", to: "application#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
