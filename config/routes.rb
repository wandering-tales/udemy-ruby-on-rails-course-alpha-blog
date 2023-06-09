Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "pages#home"
  get "about", to: "pages#about"
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
