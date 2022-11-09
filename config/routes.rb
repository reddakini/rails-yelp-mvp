Rails.application.routes.draw do
  root to: 'restaurants#index'
  
  resources :restaurants, except: [:destroy] do
    resources :reviews, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
