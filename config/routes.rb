Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "pages#home"
  get "about", to: "pages#about"
  resources :articles, only: [:show, :index, :new, :create, :edit, :update]
end
