Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#home'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
  # resources :reviews
  # Defines the root path route ("/")
  # root "articles#index"
