Rails.application.routes.draw do
  resources :mairies
  devise_for :utilisateurs
  root 'page#index'
  get 'notre-page-privee', to: "page#privee"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
