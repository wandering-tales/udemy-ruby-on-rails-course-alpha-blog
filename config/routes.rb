Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "pages#home"
  get "about", to: "pages#about"
  resources :articles
end
