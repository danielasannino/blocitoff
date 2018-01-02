Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'users/show'
  resources :items, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
