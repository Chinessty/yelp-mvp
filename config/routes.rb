Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
    collection do
      get :top
      get :chef
      get "restaurants"
      get "restaurants/new"
      get "restaurants/38"
      post "restaurants"
    end
  end
end
