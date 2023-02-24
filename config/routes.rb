Rails.application.routes.draw do
  devise_for :users
  root to: "experiences#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :experiences, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:new, :create]
  end

  resources :bookings, only: [:index, :update]

  namespace :hosts do
    resources :bookings, only: :index
    resources :experiences, only: [:index, :edit, :update]
  end
end
