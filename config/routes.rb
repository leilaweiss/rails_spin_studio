Rails.application.routes.draw do

  get "/signup", to: "users#new", as: "new_user"
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :users, only: [:index, :create, :show]

  resources :spin_classes, only: [:index, :new, :create] do
    resources :reservations, only: [:index, :new, :create]
  end
  resources :studios

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
