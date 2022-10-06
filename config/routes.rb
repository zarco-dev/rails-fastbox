Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "pages", to: "pages#tracking", as: :tracking
  # Defines the root path route ("/")
  # root "articles#index"


  resources :vehicles, only: [ :new, :create, :show ]
  resources :services
end
