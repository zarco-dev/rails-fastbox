Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "tracking", to: "pages#tracking", as: :tracking
  get "wallet", to: "pages#wallet", as: :wallet
  patch "wallet", to: "pages#wallet_edit", as: :wallet_patch

  # Defines the root path route ("/")
  # root "articles#index"

  resources :vehicles, only: [ :new, :create, :show ]
  resources :services do
    resources :packages, only: [ :new, :create, :delete ]
  end
end
