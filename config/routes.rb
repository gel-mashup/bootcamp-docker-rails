Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "users#index"

  resources :users, only: [:index, :new, :edit, :create, :update, :destroy]

  devise_scope :user do
    get "/signout", to: "devise/sessions#destroy", as: :signout
  end
end
